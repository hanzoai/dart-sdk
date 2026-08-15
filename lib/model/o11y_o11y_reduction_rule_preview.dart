//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionRulePreview {
  /// Returns a new [O11yO11yReductionRulePreview] instance.
  O11yO11yReductionRulePreview({
    this.affectedAssets = const [],
    this.currentRetainedSeries,
    this.droppedLabels = const [],
    this.effectiveFrom,
    this.ingestedSeries,
    this.reductionPercent,
    this.retainedSeries,
  });

  /// AffectedAssets are the dashboards and alerts the rule would touch.
  List<O11yO11yAffectedAsset> affectedAssets;

  /// CurrentRetainedSeries is how many survive the rules in force today.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentRetainedSeries;

  /// DroppedLabels are the labels the rule would drop.
  List<String> droppedLabels;

  /// EffectiveFrom is when the rule would take effect.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? effectiveFrom;

  /// IngestedSeries is how many series the metric ingests today.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingestedSeries;

  /// ReductionPercent is the estimated reduction, in percent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? reductionPercent;

  /// RetainedSeries is how many would survive with the candidate rule.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retainedSeries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionRulePreview &&
    _deepEquality.equals(other.affectedAssets, affectedAssets) &&
    other.currentRetainedSeries == currentRetainedSeries &&
    _deepEquality.equals(other.droppedLabels, droppedLabels) &&
    other.effectiveFrom == effectiveFrom &&
    other.ingestedSeries == ingestedSeries &&
    other.reductionPercent == reductionPercent &&
    other.retainedSeries == retainedSeries;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affectedAssets.hashCode) +
    (currentRetainedSeries == null ? 0 : currentRetainedSeries!.hashCode) +
    (droppedLabels.hashCode) +
    (effectiveFrom == null ? 0 : effectiveFrom!.hashCode) +
    (ingestedSeries == null ? 0 : ingestedSeries!.hashCode) +
    (reductionPercent == null ? 0 : reductionPercent!.hashCode) +
    (retainedSeries == null ? 0 : retainedSeries!.hashCode);

  @override
  String toString() => 'O11yO11yReductionRulePreview[affectedAssets=$affectedAssets, currentRetainedSeries=$currentRetainedSeries, droppedLabels=$droppedLabels, effectiveFrom=$effectiveFrom, ingestedSeries=$ingestedSeries, reductionPercent=$reductionPercent, retainedSeries=$retainedSeries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'affectedAssets'] = this.affectedAssets;
    if (this.currentRetainedSeries != null) {
      json[r'currentRetainedSeries'] = this.currentRetainedSeries;
    } else {
      json[r'currentRetainedSeries'] = null;
    }
      json[r'droppedLabels'] = this.droppedLabels;
    if (this.effectiveFrom != null) {
      json[r'effectiveFrom'] = this.effectiveFrom!.toUtc().toIso8601String();
    } else {
      json[r'effectiveFrom'] = null;
    }
    if (this.ingestedSeries != null) {
      json[r'ingestedSeries'] = this.ingestedSeries;
    } else {
      json[r'ingestedSeries'] = null;
    }
    if (this.reductionPercent != null) {
      json[r'reductionPercent'] = this.reductionPercent;
    } else {
      json[r'reductionPercent'] = null;
    }
    if (this.retainedSeries != null) {
      json[r'retainedSeries'] = this.retainedSeries;
    } else {
      json[r'retainedSeries'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yReductionRulePreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionRulePreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionRulePreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionRulePreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionRulePreview(
        affectedAssets: O11yO11yAffectedAsset.listFromJson(json[r'affectedAssets']),
        currentRetainedSeries: mapValueOfType<int>(json, r'currentRetainedSeries'),
        droppedLabels: json[r'droppedLabels'] is Iterable
            ? (json[r'droppedLabels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        effectiveFrom: mapDateTime(json, r'effectiveFrom', r''),
        ingestedSeries: mapValueOfType<int>(json, r'ingestedSeries'),
        reductionPercent: num.parse('${json[r'reductionPercent']}'),
        retainedSeries: mapValueOfType<int>(json, r'retainedSeries'),
      );
    }
    return null;
  }

  static List<O11yO11yReductionRulePreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionRulePreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionRulePreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionRulePreview> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionRulePreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionRulePreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionRulePreview-objects as value to a dart map
  static Map<String, List<O11yO11yReductionRulePreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionRulePreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionRulePreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

