//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricField {
  /// Returns a new [O11yO11yMetricField] instance.
  O11yO11yMetricField({
    this.description,
    this.fieldContext,
    this.fieldDataType,
    this.name,
    this.signal,
    this.unit,
  });

  /// Description describes the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// FieldContext is the context the field lives in, e.g. resource, attribute.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldContext;

  /// FieldDataType is the field's data type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldDataType;

  /// Name is the field's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Signal is the telemetry signal the field belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signal;

  /// Unit is the field's unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricField &&
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
    (name == null ? 0 : name!.hashCode) +
    (signal == null ? 0 : signal!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'O11yO11yMetricField[description=$description, fieldContext=$fieldContext, fieldDataType=$fieldDataType, name=$name, signal=$signal, unit=$unit]';

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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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

  /// Returns a new [O11yO11yMetricField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricField(
        description: mapValueOfType<String>(json, r'description'),
        fieldContext: mapValueOfType<String>(json, r'fieldContext'),
        fieldDataType: mapValueOfType<String>(json, r'fieldDataType'),
        name: mapValueOfType<String>(json, r'name'),
        signal: mapValueOfType<String>(json, r'signal'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<O11yO11yMetricField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricField> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricField-objects as value to a dart map
  static Map<String, List<O11yO11yMetricField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

