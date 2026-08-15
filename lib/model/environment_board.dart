//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnvironmentBoard {
  /// Returns a new [EnvironmentBoard] instance.
  EnvironmentBoard({
    this.environments = const [],
  });

  /// Environments are the org's deploy targets, in first-seen order.
  List<EnvironmentRow> environments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentBoard &&
    _deepEquality.equals(other.environments, environments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (environments.hashCode);

  @override
  String toString() => 'EnvironmentBoard[environments=$environments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'environments'] = this.environments;
    return json;
  }

  /// Returns a new [EnvironmentBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvironmentBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnvironmentBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnvironmentBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnvironmentBoard(
        environments: EnvironmentRow.listFromJson(json[r'environments']),
      );
    }
    return null;
  }

  static List<EnvironmentBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvironmentBoard> mapFromJson(dynamic json) {
    final map = <String, EnvironmentBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvironmentBoard-objects as value to a dart map
  static Map<String, List<EnvironmentBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnvironmentBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnvironmentBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

