//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAssociatedComponent {
  /// Returns a new [O11yAssociatedComponent] instance.
  O11yAssociatedComponent({
    this.name,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Object? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAssociatedComponent &&
    other.name == name &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yAssociatedComponent[name=$name, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAssociatedComponent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAssociatedComponent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAssociatedComponent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAssociatedComponent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAssociatedComponent(
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<Object>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yAssociatedComponent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAssociatedComponent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAssociatedComponent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAssociatedComponent> mapFromJson(dynamic json) {
    final map = <String, O11yAssociatedComponent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAssociatedComponent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAssociatedComponent-objects as value to a dart map
  static Map<String, List<O11yAssociatedComponent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAssociatedComponent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAssociatedComponent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

