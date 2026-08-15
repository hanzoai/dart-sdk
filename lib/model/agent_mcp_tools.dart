//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentMcpTools {
  /// Returns a new [AgentMcpTools] instance.
  AgentMcpTools({
    this.isEnabled,
    this.serverName,
    this.tools,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tools;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentMcpTools &&
    other.isEnabled == isEnabled &&
    other.serverName == serverName &&
    other.tools == tools;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isEnabled == null ? 0 : isEnabled!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (tools == null ? 0 : tools!.hashCode);

  @override
  String toString() => 'AgentMcpTools[isEnabled=$isEnabled, serverName=$serverName, tools=$tools]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isEnabled != null) {
      json[r'isEnabled'] = this.isEnabled;
    } else {
      json[r'isEnabled'] = null;
    }
    if (this.serverName != null) {
      json[r'serverName'] = this.serverName;
    } else {
      json[r'serverName'] = null;
    }
    if (this.tools != null) {
      json[r'tools'] = this.tools;
    } else {
      json[r'tools'] = null;
    }
    return json;
  }

  /// Returns a new [AgentMcpTools] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentMcpTools? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentMcpTools[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentMcpTools[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentMcpTools(
        isEnabled: mapValueOfType<bool>(json, r'isEnabled'),
        serverName: mapValueOfType<String>(json, r'serverName'),
        tools: mapValueOfType<String>(json, r'tools'),
      );
    }
    return null;
  }

  static List<AgentMcpTools> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentMcpTools>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentMcpTools.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentMcpTools> mapFromJson(dynamic json) {
    final map = <String, AgentMcpTools>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentMcpTools.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentMcpTools-objects as value to a dart map
  static Map<String, List<AgentMcpTools>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentMcpTools>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentMcpTools.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

