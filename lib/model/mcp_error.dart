//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPError {
  /// Returns a new [MCPError] instance.
  MCPError({
    this.code,
    this.data,
    this.message,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? code;

  Object? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPError &&
    other.code == code &&
    other.data == data &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'MCPError[code=$code, data=$data, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [MCPError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPError(
        code: mapValueOfType<int>(json, r'code'),
        data: mapValueOfType<Object>(json, r'data'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<MCPError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPError> mapFromJson(dynamic json) {
    final map = <String, MCPError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPError-objects as value to a dart map
  static Map<String, List<MCPError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

