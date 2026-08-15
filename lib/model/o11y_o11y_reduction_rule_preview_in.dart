//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionRulePreviewIn {
  /// Returns a new [O11yO11yReductionRulePreviewIn] instance.
  O11yO11yReductionRulePreviewIn({
    this.labels = const [],
    this.lookbackMs,
    required this.matchType,
    required this.metricName,
  });

  /// Labels are the label names the rule would match. Required, at least one.
  List<String> labels;

  /// LookbackMs is how far back to sample when estimating.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lookbackMs;

  /// MatchType is drop or keep. Required.
  String matchType;

  /// MetricName is the metric the rule would govern. Required.
  String metricName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionRulePreviewIn &&
    _deepEquality.equals(other.labels, labels) &&
    other.lookbackMs == lookbackMs &&
    other.matchType == matchType &&
    other.metricName == metricName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (lookbackMs == null ? 0 : lookbackMs!.hashCode) +
    (matchType.hashCode) +
    (metricName.hashCode);

  @override
  String toString() => 'O11yO11yReductionRulePreviewIn[labels=$labels, lookbackMs=$lookbackMs, matchType=$matchType, metricName=$metricName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
    if (this.lookbackMs != null) {
      json[r'lookbackMs'] = this.lookbackMs;
    } else {
      json[r'lookbackMs'] = null;
    }
      json[r'matchType'] = this.matchType;
      json[r'metricName'] = this.metricName;
    return json;
  }

  /// Returns a new [O11yO11yReductionRulePreviewIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionRulePreviewIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionRulePreviewIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionRulePreviewIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionRulePreviewIn(
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lookbackMs: mapValueOfType<int>(json, r'lookbackMs'),
        matchType: mapValueOfType<String>(json, r'matchType')!,
        metricName: mapValueOfType<String>(json, r'metricName')!,
      );
    }
    return null;
  }

  static List<O11yO11yReductionRulePreviewIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionRulePreviewIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionRulePreviewIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionRulePreviewIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionRulePreviewIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionRulePreviewIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionRulePreviewIn-objects as value to a dart map
  static Map<String, List<O11yO11yReductionRulePreviewIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionRulePreviewIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionRulePreviewIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'labels',
    'matchType',
    'metricName',
  };
}

