//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AimEvals {
  /// Returns a new [AimEvals] instance.
  AimEvals({
    this.avgScore,
    this.datasets,
    this.latencyMsAvg,
    this.models,
    this.runs,
    this.scoreNames,
    this.scores,
    this.traces,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? datasets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latencyMsAvg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? models;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? runs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scoreNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? traces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AimEvals &&
    other.avgScore == avgScore &&
    other.datasets == datasets &&
    other.latencyMsAvg == latencyMsAvg &&
    other.models == models &&
    other.runs == runs &&
    other.scoreNames == scoreNames &&
    other.scores == scores &&
    other.traces == traces;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgScore == null ? 0 : avgScore!.hashCode) +
    (datasets == null ? 0 : datasets!.hashCode) +
    (latencyMsAvg == null ? 0 : latencyMsAvg!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (runs == null ? 0 : runs!.hashCode) +
    (scoreNames == null ? 0 : scoreNames!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (traces == null ? 0 : traces!.hashCode);

  @override
  String toString() => 'AimEvals[avgScore=$avgScore, datasets=$datasets, latencyMsAvg=$latencyMsAvg, models=$models, runs=$runs, scoreNames=$scoreNames, scores=$scores, traces=$traces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgScore != null) {
      json[r'avgScore'] = this.avgScore;
    } else {
      json[r'avgScore'] = null;
    }
    if (this.datasets != null) {
      json[r'datasets'] = this.datasets;
    } else {
      json[r'datasets'] = null;
    }
    if (this.latencyMsAvg != null) {
      json[r'latencyMsAvg'] = this.latencyMsAvg;
    } else {
      json[r'latencyMsAvg'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.runs != null) {
      json[r'runs'] = this.runs;
    } else {
      json[r'runs'] = null;
    }
    if (this.scoreNames != null) {
      json[r'scoreNames'] = this.scoreNames;
    } else {
      json[r'scoreNames'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.traces != null) {
      json[r'traces'] = this.traces;
    } else {
      json[r'traces'] = null;
    }
    return json;
  }

  /// Returns a new [AimEvals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AimEvals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AimEvals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AimEvals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AimEvals(
        avgScore: num.parse('${json[r'avgScore']}'),
        datasets: mapValueOfType<int>(json, r'datasets'),
        latencyMsAvg: num.parse('${json[r'latencyMsAvg']}'),
        models: mapValueOfType<int>(json, r'models'),
        runs: mapValueOfType<int>(json, r'runs'),
        scoreNames: mapValueOfType<int>(json, r'scoreNames'),
        scores: mapValueOfType<int>(json, r'scores'),
        traces: mapValueOfType<int>(json, r'traces'),
      );
    }
    return null;
  }

  static List<AimEvals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AimEvals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AimEvals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AimEvals> mapFromJson(dynamic json) {
    final map = <String, AimEvals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AimEvals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AimEvals-objects as value to a dart map
  static Map<String, List<AimEvals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AimEvals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AimEvals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

