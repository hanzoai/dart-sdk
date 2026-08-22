//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunSummary {
  /// Returns a new [RunSummary] instance.
  RunSummary({
    this.avgScore,
    this.dataset,
    this.items,
    this.judgeModel,
    this.model,
    this.results = const [],
    this.runName,
    this.scored,
  });
  /// AvgScore is the mean over the scored examples, 0 when none scored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgScore;

  /// Dataset is the set that was scored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataset;

  /// Items is how many examples the run attempted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? items;

  /// JudgeModel is the model that graded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? judgeModel;

  /// Model is the model under test.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Results is one row per attempted example.
  List<ItemResult> results;

  /// RunName is the run's label, which scores and traces are filed under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  /// Scored is how many produced a real score. It counts successes only, so a partial run is honest about what it achieved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scored;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunSummary &&
    other.avgScore == avgScore &&
    other.dataset == dataset &&
    other.items == items &&
    other.judgeModel == judgeModel &&
    other.model == model &&
    _deepEquality.equals(other.results, results) &&
    other.runName == runName &&
    other.scored == scored;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgScore == null ? 0 : avgScore!.hashCode) +
    (dataset == null ? 0 : dataset!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (judgeModel == null ? 0 : judgeModel!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (results.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (scored == null ? 0 : scored!.hashCode);

  @override
  String toString() => 'RunSummary[avgScore=$avgScore, dataset=$dataset, items=$items, judgeModel=$judgeModel, model=$model, results=$results, runName=$runName, scored=$scored]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgScore != null) {
      json[r'avgScore'] = this.avgScore;
    } else {
      json[r'avgScore'] = null;
    }
    if (this.dataset != null) {
      json[r'dataset'] = this.dataset;
    } else {
      json[r'dataset'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.judgeModel != null) {
      json[r'judgeModel'] = this.judgeModel;
    } else {
      json[r'judgeModel'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
      json[r'results'] = this.results;
    if (this.runName != null) {
      json[r'runName'] = this.runName;
    } else {
      json[r'runName'] = null;
    }
    if (this.scored != null) {
      json[r'scored'] = this.scored;
    } else {
      json[r'scored'] = null;
    }
    return json;
  }

  /// Returns a new [RunSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunSummary(
        avgScore: num.parse('${json[r'avgScore']}'),
        dataset: mapValueOfType<String>(json, r'dataset'),
        items: mapValueOfType<int>(json, r'items'),
        judgeModel: mapValueOfType<String>(json, r'judgeModel'),
        model: mapValueOfType<String>(json, r'model'),
        results: ItemResult.listFromJson(json[r'results']),
        runName: mapValueOfType<String>(json, r'runName'),
        scored: mapValueOfType<int>(json, r'scored'),
      );
    }
    return null;
  }

  static List<RunSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunSummary> mapFromJson(dynamic json) {
    final map = <String, RunSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunSummary-objects as value to a dart map
  static Map<String, List<RunSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

