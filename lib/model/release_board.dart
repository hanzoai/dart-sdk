//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReleaseBoard {
  /// Returns a new [ReleaseBoard] instance.
  ReleaseBoard({
    this.releases = const [],
  });

  /// Releases are the deployments that genuinely reached the cluster.
  List<ReleaseRow> releases;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReleaseBoard &&
    _deepEquality.equals(other.releases, releases);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (releases.hashCode);

  @override
  String toString() => 'ReleaseBoard[releases=$releases]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'releases'] = this.releases;
    return json;
  }

  /// Returns a new [ReleaseBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReleaseBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReleaseBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReleaseBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReleaseBoard(
        releases: ReleaseRow.listFromJson(json[r'releases']),
      );
    }
    return null;
  }

  static List<ReleaseBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReleaseBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReleaseBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReleaseBoard> mapFromJson(dynamic json) {
    final map = <String, ReleaseBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReleaseBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReleaseBoard-objects as value to a dart map
  static Map<String, List<ReleaseBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReleaseBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReleaseBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

