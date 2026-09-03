//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ModelStat {
  /// Returns a new [ModelStat] instance.
  ModelStat({
    this.completionTokens,
    this.costCents,
    this.costPct,
    this.errorRate,
    this.errors,
    this.model,
    this.modelCount,
    this.p50Ms,
    this.p95Ms,
    this.p99Ms,
    this.promptTokens,
    this.provider,
    this.requests,
    this.totalTokens,
  });
  /// tokens it answered with
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? completionTokens;

  /// what this model cost, in cents
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// share of total spend, 0..100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? costPct;

  /// share of its calls that failed, 0..1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? errorRate;

  /// calls to it that did not succeed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? errors;

  /// the model this row is about, or \"other\" for the fold
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// >0 only on the \"other\" fold
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modelCount;

  /// median latency, null when no spans carry it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p50Ms;

  /// 95th-percentile latency, null when unknown
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p95Ms;

  /// 99th-percentile latency, null when unknown
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? p99Ms;

  /// tokens sent to it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? promptTokens;

  /// who serves it
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// calls to this model in the window
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// prompt plus completion
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalTokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelStat &&
    other.completionTokens == completionTokens &&
    other.costCents == costCents &&
    other.costPct == costPct &&
    other.errorRate == errorRate &&
    other.errors == errors &&
    other.model == model &&
    other.modelCount == modelCount &&
    other.p50Ms == p50Ms &&
    other.p95Ms == p95Ms &&
    other.p99Ms == p99Ms &&
    other.promptTokens == promptTokens &&
    other.provider == provider &&
    other.requests == requests &&
    other.totalTokens == totalTokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (completionTokens == null ? 0 : completionTokens!.hashCode) +
    (costCents == null ? 0 : costCents!.hashCode) +
    (costPct == null ? 0 : costPct!.hashCode) +
    (errorRate == null ? 0 : errorRate!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (modelCount == null ? 0 : modelCount!.hashCode) +
    (p50Ms == null ? 0 : p50Ms!.hashCode) +
    (p95Ms == null ? 0 : p95Ms!.hashCode) +
    (p99Ms == null ? 0 : p99Ms!.hashCode) +
    (promptTokens == null ? 0 : promptTokens!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (totalTokens == null ? 0 : totalTokens!.hashCode);

  @override
  String toString() => 'ModelStat[completionTokens=$completionTokens, costCents=$costCents, costPct=$costPct, errorRate=$errorRate, errors=$errors, model=$model, modelCount=$modelCount, p50Ms=$p50Ms, p95Ms=$p95Ms, p99Ms=$p99Ms, promptTokens=$promptTokens, provider=$provider, requests=$requests, totalTokens=$totalTokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.completionTokens != null) {
      json[r'completionTokens'] = this.completionTokens;
    } else {
      json[r'completionTokens'] = null;
    }
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
    if (this.costPct != null) {
      json[r'costPct'] = this.costPct;
    } else {
      json[r'costPct'] = null;
    }
    if (this.errorRate != null) {
      json[r'errorRate'] = this.errorRate;
    } else {
      json[r'errorRate'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.modelCount != null) {
      json[r'modelCount'] = this.modelCount;
    } else {
      json[r'modelCount'] = null;
    }
    if (this.p50Ms != null) {
      json[r'p50Ms'] = this.p50Ms;
    } else {
      json[r'p50Ms'] = null;
    }
    if (this.p95Ms != null) {
      json[r'p95Ms'] = this.p95Ms;
    } else {
      json[r'p95Ms'] = null;
    }
    if (this.p99Ms != null) {
      json[r'p99Ms'] = this.p99Ms;
    } else {
      json[r'p99Ms'] = null;
    }
    if (this.promptTokens != null) {
      json[r'promptTokens'] = this.promptTokens;
    } else {
      json[r'promptTokens'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.totalTokens != null) {
      json[r'totalTokens'] = this.totalTokens;
    } else {
      json[r'totalTokens'] = null;
    }
    return json;
  }

  /// Returns a new [ModelStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelStat(
        completionTokens: mapValueOfType<int>(json, r'completionTokens'),
        costCents: mapValueOfType<int>(json, r'costCents'),
        costPct: mapValueOfType<double>(json, r'costPct'),
        errorRate: mapValueOfType<double>(json, r'errorRate'),
        errors: mapValueOfType<int>(json, r'errors'),
        model: mapValueOfType<String>(json, r'model'),
        modelCount: mapValueOfType<int>(json, r'modelCount'),
        p50Ms: mapValueOfType<double>(json, r'p50Ms'),
        p95Ms: mapValueOfType<double>(json, r'p95Ms'),
        p99Ms: mapValueOfType<double>(json, r'p99Ms'),
        promptTokens: mapValueOfType<int>(json, r'promptTokens'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        totalTokens: mapValueOfType<int>(json, r'totalTokens'),
      );
    }
    return null;
  }

  static List<ModelStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelStat> mapFromJson(dynamic json) {
    final map = <String, ModelStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelStat-objects as value to a dart map
  static Map<String, List<ModelStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

