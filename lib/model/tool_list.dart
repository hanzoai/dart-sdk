//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ToolList {
  /// Returns a new [ToolList] instance.
  ToolList({
    this.tools = const [],
  });
  /// Tools is every tool the caller may see, deduplicated by name with source precedence applied.
  List<Tool> tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ToolList &&
    _deepEquality.equals(other.tools, tools);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tools.hashCode);

  @override
  String toString() => 'ToolList[tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tools'] = this.tools;
    return json;
  }

  /// Returns a new [ToolList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ToolList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ToolList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ToolList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ToolList(
        tools: Tool.listFromJson(json[r'tools']),
      );
    }
    return null;
  }

  static List<ToolList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ToolList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ToolList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ToolList> mapFromJson(dynamic json) {
    final map = <String, ToolList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ToolList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ToolList-objects as value to a dart map
  static Map<String, List<ToolList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ToolList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ToolList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

