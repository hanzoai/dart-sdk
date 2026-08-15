//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ToolResult {
  /// Returns a new [ToolResult] instance.
  ToolResult({
    this.name,
    this.result,
  });

  /// Name is the tool that ran.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Result is the tool's own output, verbatim — its shape is the tool's, not this plane's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ToolResult &&
    other.name == name &&
    other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (result == null ? 0 : result!.hashCode);

  @override
  String toString() => 'ToolResult[name=$name, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    return json;
  }

  /// Returns a new [ToolResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ToolResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ToolResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ToolResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ToolResult(
        name: mapValueOfType<String>(json, r'name'),
        result: mapValueOfType<Object>(json, r'result'),
      );
    }
    return null;
  }

  static List<ToolResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ToolResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ToolResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ToolResult> mapFromJson(dynamic json) {
    final map = <String, ToolResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ToolResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ToolResult-objects as value to a dart map
  static Map<String, List<ToolResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ToolResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ToolResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

