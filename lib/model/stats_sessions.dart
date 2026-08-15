//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StatsSessions {
  /// Returns a new [StatsSessions] instance.
  StatsSessions({
    this.activeSessions = const {},
  });

  /// ActiveSessions maps a workspace uuid to its connected sessions. It carries only the token's OWN workspace, and is empty for a token that names none.
  Map<String, List<StatsUser>> activeSessions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatsSessions &&
    _deepEquality.equals(other.activeSessions, activeSessions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeSessions.hashCode);

  @override
  String toString() => 'StatsSessions[activeSessions=$activeSessions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activeSessions'] = this.activeSessions;
    return json;
  }

  /// Returns a new [StatsSessions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatsSessions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatsSessions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatsSessions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatsSessions(
        activeSessions: json[r'activeSessions'] == null
          ? const {}
            : StatsUser.mapListFromJson(json[r'activeSessions']),
      );
    }
    return null;
  }

  static List<StatsSessions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatsSessions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatsSessions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatsSessions> mapFromJson(dynamic json) {
    final map = <String, StatsSessions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatsSessions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatsSessions-objects as value to a dart map
  static Map<String, List<StatsSessions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatsSessions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatsSessions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

