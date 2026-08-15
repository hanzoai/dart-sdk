//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yPreference {
  /// Returns a new [O11yO11yPreference] instance.
  O11yO11yPreference({
    this.allowedScopes = const [],
    this.allowedValues = const [],
    this.defaultValue,
    this.description,
    this.name,
    this.value,
    this.valueType,
  });

  /// AllowedScopes are the scopes the preference may be set at — org, user.
  List<String> allowedScopes;

  /// AllowedValues restricts a string preference to these values.
  List<String> allowedValues;

  /// DefaultValue is the value before anyone set one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? defaultValue;

  /// Description says what the preference does.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Name is the preference name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Value is the current value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? value;

  /// ValueType is the JSON type a value must have — string, integer, float or boolean.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? valueType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yPreference &&
    _deepEquality.equals(other.allowedScopes, allowedScopes) &&
    _deepEquality.equals(other.allowedValues, allowedValues) &&
    other.defaultValue == defaultValue &&
    other.description == description &&
    other.name == name &&
    other.value == value &&
    other.valueType == valueType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowedScopes.hashCode) +
    (allowedValues.hashCode) +
    (defaultValue == null ? 0 : defaultValue!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (valueType == null ? 0 : valueType!.hashCode);

  @override
  String toString() => 'O11yO11yPreference[allowedScopes=$allowedScopes, allowedValues=$allowedValues, defaultValue=$defaultValue, description=$description, name=$name, value=$value, valueType=$valueType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowedScopes'] = this.allowedScopes;
      json[r'allowedValues'] = this.allowedValues;
    if (this.defaultValue != null) {
      json[r'defaultValue'] = this.defaultValue;
    } else {
      json[r'defaultValue'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.valueType != null) {
      json[r'valueType'] = this.valueType;
    } else {
      json[r'valueType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yPreference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yPreference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yPreference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yPreference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yPreference(
        allowedScopes: json[r'allowedScopes'] is Iterable
            ? (json[r'allowedScopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        allowedValues: json[r'allowedValues'] is Iterable
            ? (json[r'allowedValues'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        defaultValue: mapValueOfType<Object>(json, r'defaultValue'),
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        value: mapValueOfType<Object>(json, r'value'),
        valueType: mapValueOfType<String>(json, r'valueType'),
      );
    }
    return null;
  }

  static List<O11yO11yPreference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yPreference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yPreference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yPreference> mapFromJson(dynamic json) {
    final map = <String, O11yO11yPreference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yPreference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yPreference-objects as value to a dart map
  static Map<String, List<O11yO11yPreference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yPreference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yPreference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

