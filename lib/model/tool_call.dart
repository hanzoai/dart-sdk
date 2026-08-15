//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ToolCall {
  /// Returns a new [ToolCall] instance.
  ToolCall({
    this.arguments = const {},
    this.name,
  });

  /// Arguments is the tool's own input object, passed through verbatim to whichever source owns it.
  Map<String, Object> arguments;

  /// Name is the tool to run, exactly as GET /v1/tools reports it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ToolCall &&
    _deepEquality.equals(other.arguments, arguments) &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (arguments.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ToolCall[arguments=$arguments, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'arguments'] = this.arguments;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ToolCall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ToolCall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ToolCall[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ToolCall[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ToolCall(
        arguments: mapCastOfType<String, Object>(json, r'arguments') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ToolCall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ToolCall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ToolCall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ToolCall> mapFromJson(dynamic json) {
    final map = <String, ToolCall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ToolCall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ToolCall-objects as value to a dart map
  static Map<String, List<ToolCall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ToolCall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ToolCall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

