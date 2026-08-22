//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunRecord {
  /// Returns a new [RunRecord] instance.
  RunRecord({
    this.avgScore,
    this.createdAt,
    this.dataset,
    this.items,
    this.judgeModel,
    this.model,
    this.runName,
    this.scored,
    this.updatedAt,
  });
  /// AvgScore is the mean over the scored examples.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgScore;

  /// CreatedAt is when the run first landed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Dataset is the set that was scored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataset;

  /// Items is how many examples were attempted.
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

  /// RunName is the run's label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  /// Scored is how many produced a real score.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scored;

  /// UpdatedAt is when the record last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunRecord &&
    other.avgScore == avgScore &&
    other.createdAt == createdAt &&
    other.dataset == dataset &&
    other.items == items &&
    other.judgeModel == judgeModel &&
    other.model == model &&
    other.runName == runName &&
    other.scored == scored &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avgScore == null ? 0 : avgScore!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (dataset == null ? 0 : dataset!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (judgeModel == null ? 0 : judgeModel!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (runName == null ? 0 : runName!.hashCode) +
    (scored == null ? 0 : scored!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'RunRecord[avgScore=$avgScore, createdAt=$createdAt, dataset=$dataset, items=$items, judgeModel=$judgeModel, model=$model, runName=$runName, scored=$scored, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.avgScore != null) {
      json[r'avgScore'] = this.avgScore;
    } else {
      json[r'avgScore'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RunRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunRecord(
        avgScore: num.parse('${json[r'avgScore']}'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        dataset: mapValueOfType<String>(json, r'dataset'),
        items: mapValueOfType<int>(json, r'items'),
        judgeModel: mapValueOfType<String>(json, r'judgeModel'),
        model: mapValueOfType<String>(json, r'model'),
        runName: mapValueOfType<String>(json, r'runName'),
        scored: mapValueOfType<int>(json, r'scored'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<RunRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunRecord> mapFromJson(dynamic json) {
    final map = <String, RunRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunRecord-objects as value to a dart map
  static Map<String, List<RunRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

