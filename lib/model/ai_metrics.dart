//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiMetrics {
  /// Returns a new [AiMetrics] instance.
  AiMetrics({
    this.end,
    this.evalRuns = const [],
    this.evals,
    this.o11yAi,
    this.o11yAiModels = const [],
    this.range,
    this.scoreNames = const [],
    this.scoreSeries = const [],
    this.start,
    this.topActors = const [],
    this.topModels = const [],
    this.usage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// recent eval runs (progress)
  List<AimRunStat> evalRuns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AimEvals? evals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AimO11yAI? o11yAi;

  /// gen_ai spans per-model
  List<AimLfModelStat> o11yAiModels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// eval_scores per score-name
  List<AimScoreStat> scoreNames;

  /// avg eval score over time (progress trend)
  List<AimScorePoint> scoreSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// TopActors is per-PRINCIPAL spend from the same ledger — whose bill it is, which the per-model board cannot answer.
  List<AimActorStat> topActors;

  /// cloud_usage per-model (populated today)
  List<AimModelStat> topModels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AimUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiMetrics &&
    other.end == end &&
    _deepEquality.equals(other.evalRuns, evalRuns) &&
    other.evals == evals &&
    other.o11yAi == o11yAi &&
    _deepEquality.equals(other.o11yAiModels, o11yAiModels) &&
    other.range == range &&
    _deepEquality.equals(other.scoreNames, scoreNames) &&
    _deepEquality.equals(other.scoreSeries, scoreSeries) &&
    other.start == start &&
    _deepEquality.equals(other.topActors, topActors) &&
    _deepEquality.equals(other.topModels, topModels) &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (evalRuns.hashCode) +
    (evals == null ? 0 : evals!.hashCode) +
    (o11yAi == null ? 0 : o11yAi!.hashCode) +
    (o11yAiModels.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scoreNames.hashCode) +
    (scoreSeries.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (topActors.hashCode) +
    (topModels.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'AiMetrics[end=$end, evalRuns=$evalRuns, evals=$evals, o11yAi=$o11yAi, o11yAiModels=$o11yAiModels, range=$range, scoreNames=$scoreNames, scoreSeries=$scoreSeries, start=$start, topActors=$topActors, topModels=$topModels, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
      json[r'evalRuns'] = this.evalRuns;
    if (this.evals != null) {
      json[r'evals'] = this.evals;
    } else {
      json[r'evals'] = null;
    }
    if (this.o11yAi != null) {
      json[r'o11yAi'] = this.o11yAi;
    } else {
      json[r'o11yAi'] = null;
    }
      json[r'o11yAiModels'] = this.o11yAiModels;
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
      json[r'scoreNames'] = this.scoreNames;
      json[r'scoreSeries'] = this.scoreSeries;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'topActors'] = this.topActors;
      json[r'topModels'] = this.topModels;
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [AiMetrics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiMetrics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiMetrics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiMetrics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiMetrics(
        end: mapValueOfType<String>(json, r'end'),
        evalRuns: AimRunStat.listFromJson(json[r'evalRuns']),
        evals: AimEvals.fromJson(json[r'evals']),
        o11yAi: AimO11yAI.fromJson(json[r'o11yAi']),
        o11yAiModels: AimLfModelStat.listFromJson(json[r'o11yAiModels']),
        range: mapValueOfType<String>(json, r'range'),
        scoreNames: AimScoreStat.listFromJson(json[r'scoreNames']),
        scoreSeries: AimScorePoint.listFromJson(json[r'scoreSeries']),
        start: mapValueOfType<String>(json, r'start'),
        topActors: AimActorStat.listFromJson(json[r'topActors']),
        topModels: AimModelStat.listFromJson(json[r'topModels']),
        usage: AimUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<AiMetrics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiMetrics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiMetrics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiMetrics> mapFromJson(dynamic json) {
    final map = <String, AiMetrics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiMetrics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiMetrics-objects as value to a dart map
  static Map<String, List<AiMetrics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiMetrics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiMetrics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

