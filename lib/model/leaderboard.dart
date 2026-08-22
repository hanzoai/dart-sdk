//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Leaderboard {
  /// Returns a new [Leaderboard] instance.
  Leaderboard({
    this.benchmark,
    this.rows = const [],
  });
  /// Benchmark is the catalog id these rows are about.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  /// Rows is one per model, ordered by measured accuracy descending.
  List<LeaderRow> rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leaderboard &&
    other.benchmark == benchmark &&
    _deepEquality.equals(other.rows, rows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (rows.hashCode);

  @override
  String toString() => 'Leaderboard[benchmark=$benchmark, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
      json[r'rows'] = this.rows;
    return json;
  }

  /// Returns a new [Leaderboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leaderboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leaderboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leaderboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leaderboard(
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        rows: LeaderRow.listFromJson(json[r'rows']),
      );
    }
    return null;
  }

  static List<Leaderboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leaderboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leaderboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leaderboard> mapFromJson(dynamic json) {
    final map = <String, Leaderboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leaderboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leaderboard-objects as value to a dart map
  static Map<String, List<Leaderboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leaderboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leaderboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

