//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamScopeDescription {
  /// Returns a new [IamScopeDescription] instance.
  IamScopeDescription({
    this.description,
    this.displayName,
    this.scope,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamScopeDescription &&
    other.description == description &&
    other.displayName == displayName &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'IamScopeDescription[description=$description, displayName=$displayName, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [IamScopeDescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamScopeDescription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamScopeDescription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamScopeDescription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamScopeDescription(
        description: mapValueOfType<String>(json, r'description'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        scope: mapValueOfType<String>(json, r'scope'),
      );
    }
    return null;
  }

  static List<IamScopeDescription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamScopeDescription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamScopeDescription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamScopeDescription> mapFromJson(dynamic json) {
    final map = <String, IamScopeDescription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamScopeDescription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamScopeDescription-objects as value to a dart map
  static Map<String, List<IamScopeDescription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamScopeDescription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamScopeDescription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

