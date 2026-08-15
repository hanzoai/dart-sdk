//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AgentList {
  /// Returns a new [AgentList] instance.
  AgentList({
    this.agents = const [],
  });

  /// Agents is the org's agents, each carrying its recorded run count.
  List<AgentView> agents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentList &&
    _deepEquality.equals(other.agents, agents);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agents.hashCode);

  @override
  String toString() => 'AgentList[agents=$agents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'agents'] = this.agents;
    return json;
  }

  /// Returns a new [AgentList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentList(
        agents: AgentView.listFromJson(json[r'agents']),
      );
    }
    return null;
  }

  static List<AgentList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentList> mapFromJson(dynamic json) {
    final map = <String, AgentList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentList-objects as value to a dart map
  static Map<String, List<AgentList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

