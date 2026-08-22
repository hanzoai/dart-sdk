//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BuildBoard {
  /// Returns a new [BuildBoard] instance.
  BuildBoard({
    this.builds = const [],
  });
  /// Builds are the org's real BuildKit build records, newest first.
  List<BuildRow> builds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildBoard &&
    _deepEquality.equals(other.builds, builds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (builds.hashCode);

  @override
  String toString() => 'BuildBoard[builds=$builds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'builds'] = this.builds;
    return json;
  }

  /// Returns a new [BuildBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildBoard(
        builds: BuildRow.listFromJson(json[r'builds']),
      );
    }
    return null;
  }

  static List<BuildBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildBoard> mapFromJson(dynamic json) {
    final map = <String, BuildBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildBoard-objects as value to a dart map
  static Map<String, List<BuildBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

