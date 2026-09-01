//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Executions {
  /// Returns a new [Executions] instance.
  Executions({
    this.fetchedAt,
    this.orgs = const [],
    this.repos,
    this.runs = const [],
    this.sourceErr,
    this.stale,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? fetchedAt;

  List<String> orgs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repos;

  List<Execution> runs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceErr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Executions &&
    other.fetchedAt == fetchedAt &&
    _deepEquality.equals(other.orgs, orgs) &&
    other.repos == repos &&
    _deepEquality.equals(other.runs, runs) &&
    other.sourceErr == sourceErr &&
    other.stale == stale;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fetchedAt == null ? 0 : fetchedAt!.hashCode) +
    (orgs.hashCode) +
    (repos == null ? 0 : repos!.hashCode) +
    (runs.hashCode) +
    (sourceErr == null ? 0 : sourceErr!.hashCode) +
    (stale == null ? 0 : stale!.hashCode);

  @override
  String toString() => 'Executions[fetchedAt=$fetchedAt, orgs=$orgs, repos=$repos, runs=$runs, sourceErr=$sourceErr, stale=$stale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fetchedAt != null) {
      json[r'fetchedAt'] = this.fetchedAt!.toUtc().toIso8601String();
    } else {
      json[r'fetchedAt'] = null;
    }
      json[r'orgs'] = this.orgs;
    if (this.repos != null) {
      json[r'repos'] = this.repos;
    } else {
      json[r'repos'] = null;
    }
      json[r'runs'] = this.runs;
    if (this.sourceErr != null) {
      json[r'sourceErr'] = this.sourceErr;
    } else {
      json[r'sourceErr'] = null;
    }
    if (this.stale != null) {
      json[r'stale'] = this.stale;
    } else {
      json[r'stale'] = null;
    }
    return json;
  }

  /// Returns a new [Executions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Executions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Executions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Executions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Executions(
        fetchedAt: mapDateTime(json, r'fetchedAt', r''),
        orgs: json[r'orgs'] is Iterable
            ? (json[r'orgs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        repos: mapValueOfType<int>(json, r'repos'),
        runs: Execution.listFromJson(json[r'runs']),
        sourceErr: mapValueOfType<String>(json, r'sourceErr'),
        stale: mapValueOfType<bool>(json, r'stale'),
      );
    }
    return null;
  }

  static List<Executions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Executions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Executions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Executions> mapFromJson(dynamic json) {
    final map = <String, Executions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Executions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Executions-objects as value to a dart map
  static Map<String, List<Executions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Executions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Executions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

