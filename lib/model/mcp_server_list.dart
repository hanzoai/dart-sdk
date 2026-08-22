//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class McpServerList {
  /// Returns a new [McpServerList] instance.
  McpServerList({
    this.servers = const [],
  });
  /// Servers is every external MCP server this org has registered. No secret VALUE is ever included — only whether one is set.
  List<MCPServer> servers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is McpServerList &&
    _deepEquality.equals(other.servers, servers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servers.hashCode);

  @override
  String toString() => 'McpServerList[servers=$servers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'servers'] = this.servers;
    return json;
  }

  /// Returns a new [McpServerList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static McpServerList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "McpServerList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "McpServerList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return McpServerList(
        servers: MCPServer.listFromJson(json[r'servers']),
      );
    }
    return null;
  }

  static List<McpServerList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <McpServerList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = McpServerList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, McpServerList> mapFromJson(dynamic json) {
    final map = <String, McpServerList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = McpServerList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of McpServerList-objects as value to a dart map
  static Map<String, List<McpServerList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<McpServerList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = McpServerList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

