//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunPoint {
  /// Returns a new [RunPoint] instance.
  RunPoint({
    this.at,
    this.delta,
    this.n,
    this.run,
    this.score,
  });
  /// At is when the run was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? at;

  /// Delta is the change in score from the previous run for this model, absent on the first. It is the number the whole surface exists to make visible.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? delta;

  /// N is how many items the run covered. Two runs are only comparable at the same n, which is why it travels with every point rather than being assumed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n;

  /// Run is the measurement id these attempts were recorded under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? run;

  /// Score is accuracy over the items this run covered, as a percentage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunPoint &&
    other.at == at &&
    other.delta == delta &&
    other.n == n &&
    other.run == run &&
    other.score == score;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (delta == null ? 0 : delta!.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (run == null ? 0 : run!.hashCode) +
    (score == null ? 0 : score!.hashCode);

  @override
  String toString() => 'RunPoint[at=$at, delta=$delta, n=$n, run=$run, score=$score]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at!.toUtc().toIso8601String();
    } else {
      json[r'at'] = null;
    }
    if (this.delta != null) {
      json[r'delta'] = this.delta;
    } else {
      json[r'delta'] = null;
    }
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.run != null) {
      json[r'run'] = this.run;
    } else {
      json[r'run'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    return json;
  }

  /// Returns a new [RunPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunPoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunPoint(
        at: mapDateTime(json, r'at', r''),
        delta: mapValueOfType<double>(json, r'delta'),
        n: mapValueOfType<int>(json, r'n'),
        run: mapValueOfType<String>(json, r'run'),
        score: mapValueOfType<double>(json, r'score'),
      );
    }
    return null;
  }

  static List<RunPoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunPoint> mapFromJson(dynamic json) {
    final map = <String, RunPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunPoint-objects as value to a dart map
  static Map<String, List<RunPoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunPoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

