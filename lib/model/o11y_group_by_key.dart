//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGroupByKey {
  /// Returns a new [O11yGroupByKey] instance.
  O11yGroupByKey({
    this.description,
    this.fieldContext,
    this.fieldDataType,
    required this.name,
    this.signal,
    this.unit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  Object? fieldContext;

  Object? fieldDataType;

  String name;

  Object? signal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGroupByKey &&
    other.description == description &&
    other.fieldContext == fieldContext &&
    other.fieldDataType == fieldDataType &&
    other.name == name &&
    other.signal == signal &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (fieldContext == null ? 0 : fieldContext!.hashCode) +
    (fieldDataType == null ? 0 : fieldDataType!.hashCode) +
    (name.hashCode) +
    (signal == null ? 0 : signal!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'O11yGroupByKey[description=$description, fieldContext=$fieldContext, fieldDataType=$fieldDataType, name=$name, signal=$signal, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.fieldContext != null) {
      json[r'fieldContext'] = this.fieldContext;
    } else {
      json[r'fieldContext'] = null;
    }
    if (this.fieldDataType != null) {
      json[r'fieldDataType'] = this.fieldDataType;
    } else {
      json[r'fieldDataType'] = null;
    }
      json[r'name'] = this.name;
    if (this.signal != null) {
      json[r'signal'] = this.signal;
    } else {
      json[r'signal'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGroupByKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGroupByKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGroupByKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGroupByKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGroupByKey(
        description: mapValueOfType<String>(json, r'description'),
        fieldContext: mapValueOfType<Object>(json, r'fieldContext'),
        fieldDataType: mapValueOfType<Object>(json, r'fieldDataType'),
        name: mapValueOfType<String>(json, r'name')!,
        signal: mapValueOfType<Object>(json, r'signal'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<O11yGroupByKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGroupByKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGroupByKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGroupByKey> mapFromJson(dynamic json) {
    final map = <String, O11yGroupByKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGroupByKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGroupByKey-objects as value to a dart map
  static Map<String, List<O11yGroupByKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGroupByKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGroupByKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

