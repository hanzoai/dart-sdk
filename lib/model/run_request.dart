//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RunRequest {
  /// Returns a new [RunRequest] instance.
  RunRequest({
    required this.dataset,
    this.judge,
    this.limit,
    required this.model,
    this.runName,
  });

  /// Dataset is the set to score, which must belong to the caller's org and hold at least one ACTIVE example.
  String dataset;

  /// Judge is the judge to grade with. Omitted, the model under test grades itself against a default correctness criterion under the score name \"llm-judge\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JudgeSpec? judge;

  /// Limit caps how many examples this run scores. It defaults to 20, and anything above 100 falls back to that default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Model is the model under test.
  String model;

  /// RunName labels the run and is generated from the clock when omitted. It must match ^[A-Za-z0-9][A-Za-z0-9._-]{0,63}$.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunRequest &&
    other.dataset == dataset &&
    other.judge == judge &&
    other.limit == limit &&
    other.model == model &&
    other.runName == runName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataset.hashCode) +
    (judge == null ? 0 : judge!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (model.hashCode) +
    (runName == null ? 0 : runName!.hashCode);

  @override
  String toString() => 'RunRequest[dataset=$dataset, judge=$judge, limit=$limit, model=$model, runName=$runName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dataset'] = this.dataset;
    if (this.judge != null) {
      json[r'judge'] = this.judge;
    } else {
      json[r'judge'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
      json[r'model'] = this.model;
    if (this.runName != null) {
      json[r'runName'] = this.runName;
    } else {
      json[r'runName'] = null;
    }
    return json;
  }

  /// Returns a new [RunRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RunRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RunRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RunRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RunRequest(
        dataset: mapValueOfType<String>(json, r'dataset')!,
        judge: JudgeSpec.fromJson(json[r'judge']),
        limit: mapValueOfType<int>(json, r'limit'),
        model: mapValueOfType<String>(json, r'model')!,
        runName: mapValueOfType<String>(json, r'runName'),
      );
    }
    return null;
  }

  static List<RunRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RunRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RunRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RunRequest> mapFromJson(dynamic json) {
    final map = <String, RunRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RunRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RunRequest-objects as value to a dart map
  static Map<String, List<RunRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RunRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RunRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dataset',
    'model',
  };
}

