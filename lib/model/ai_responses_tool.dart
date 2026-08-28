//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiResponsesTool {
  /// Returns a new [AiResponsesTool] instance.
  AiResponsesTool({
    this.description,
    this.format,
    this.name,
    this.parameters,
    this.strict,
    this.type,
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
  String? format;

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
  String? parameters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? strict;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiResponsesTool &&
    other.description == description &&
    other.format == format &&
    other.name == name &&
    other.parameters == parameters &&
    other.strict == strict &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (parameters == null ? 0 : parameters!.hashCode) +
    (strict == null ? 0 : strict!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'AiResponsesTool[description=$description, format=$format, name=$name, parameters=$parameters, strict=$strict, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.parameters != null) {
      json[r'parameters'] = this.parameters;
    } else {
      json[r'parameters'] = null;
    }
    if (this.strict != null) {
      json[r'strict'] = this.strict;
    } else {
      json[r'strict'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [AiResponsesTool] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiResponsesTool? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiResponsesTool[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiResponsesTool[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiResponsesTool(
        description: mapValueOfType<String>(json, r'description'),
        format: mapValueOfType<String>(json, r'format'),
        name: mapValueOfType<String>(json, r'name'),
        parameters: mapValueOfType<String>(json, r'parameters'),
        strict: mapValueOfType<bool>(json, r'strict'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<AiResponsesTool> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiResponsesTool>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiResponsesTool.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiResponsesTool> mapFromJson(dynamic json) {
    final map = <String, AiResponsesTool>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiResponsesTool.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiResponsesTool-objects as value to a dart map
  static Map<String, List<AiResponsesTool>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiResponsesTool>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiResponsesTool.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

