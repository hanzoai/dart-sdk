//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionRule {
  /// Returns a new [O11yO11yReductionRule] instance.
  O11yO11yReductionRule({
    this.active,
    this.createdAt,
    this.createdBy,
    this.effectiveFrom,
    this.id,
    this.ingestedSamples,
    this.ingestedSeries,
    this.labels = const [],
    this.matchType,
    this.metricName,
    this.retainedSamples,
    this.retainedSeries,
    this.updatedAt,
    this.updatedBy,
  });
  /// Active says whether the rule is in force.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// CreatedAt is when the rule was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// CreatedBy is who created it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  /// EffectiveFrom is when the rule took effect.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? effectiveFrom;

  /// ID is the rule's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// IngestedSamples is how many samples arrived while the rule was active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingestedSamples;

  /// IngestedSeries is how many series arrived while the rule was active.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingestedSeries;

  /// Labels are the label names the rule matches.
  List<String> labels;

  /// MatchType is drop or keep.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchType;

  /// MetricName is the metric the rule governs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metricName;

  /// RetainedSamples is how many of them were kept.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retainedSamples;

  /// RetainedSeries is how many of them were kept.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retainedSeries;

  /// UpdatedAt is when the rule last changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// UpdatedBy is who last changed it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionRule &&
    other.active == active &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy &&
    other.effectiveFrom == effectiveFrom &&
    other.id == id &&
    other.ingestedSamples == ingestedSamples &&
    other.ingestedSeries == ingestedSeries &&
    _deepEquality.equals(other.labels, labels) &&
    other.matchType == matchType &&
    other.metricName == metricName &&
    other.retainedSamples == retainedSamples &&
    other.retainedSeries == retainedSeries &&
    other.updatedAt == updatedAt &&
    other.updatedBy == updatedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (effectiveFrom == null ? 0 : effectiveFrom!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (ingestedSamples == null ? 0 : ingestedSamples!.hashCode) +
    (ingestedSeries == null ? 0 : ingestedSeries!.hashCode) +
    (labels.hashCode) +
    (matchType == null ? 0 : matchType!.hashCode) +
    (metricName == null ? 0 : metricName!.hashCode) +
    (retainedSamples == null ? 0 : retainedSamples!.hashCode) +
    (retainedSeries == null ? 0 : retainedSeries!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode);

  @override
  String toString() => 'O11yO11yReductionRule[active=$active, createdAt=$createdAt, createdBy=$createdBy, effectiveFrom=$effectiveFrom, id=$id, ingestedSamples=$ingestedSamples, ingestedSeries=$ingestedSeries, labels=$labels, matchType=$matchType, metricName=$metricName, retainedSamples=$retainedSamples, retainedSeries=$retainedSeries, updatedAt=$updatedAt, updatedBy=$updatedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.effectiveFrom != null) {
      json[r'effectiveFrom'] = this.effectiveFrom!.toUtc().toIso8601String();
    } else {
      json[r'effectiveFrom'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ingestedSamples != null) {
      json[r'ingestedSamples'] = this.ingestedSamples;
    } else {
      json[r'ingestedSamples'] = null;
    }
    if (this.ingestedSeries != null) {
      json[r'ingestedSeries'] = this.ingestedSeries;
    } else {
      json[r'ingestedSeries'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.matchType != null) {
      json[r'matchType'] = this.matchType;
    } else {
      json[r'matchType'] = null;
    }
    if (this.metricName != null) {
      json[r'metricName'] = this.metricName;
    } else {
      json[r'metricName'] = null;
    }
    if (this.retainedSamples != null) {
      json[r'retainedSamples'] = this.retainedSamples;
    } else {
      json[r'retainedSamples'] = null;
    }
    if (this.retainedSeries != null) {
      json[r'retainedSeries'] = this.retainedSeries;
    } else {
      json[r'retainedSeries'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yReductionRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionRule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionRule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionRule(
        active: mapValueOfType<bool>(json, r'active'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        effectiveFrom: mapDateTime(json, r'effectiveFrom', r''),
        id: mapValueOfType<String>(json, r'id'),
        ingestedSamples: mapValueOfType<int>(json, r'ingestedSamples'),
        ingestedSeries: mapValueOfType<int>(json, r'ingestedSeries'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        matchType: mapValueOfType<String>(json, r'matchType'),
        metricName: mapValueOfType<String>(json, r'metricName'),
        retainedSamples: mapValueOfType<int>(json, r'retainedSamples'),
        retainedSeries: mapValueOfType<int>(json, r'retainedSeries'),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
      );
    }
    return null;
  }

  static List<O11yO11yReductionRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionRule> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionRule-objects as value to a dart map
  static Map<String, List<O11yO11yReductionRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

