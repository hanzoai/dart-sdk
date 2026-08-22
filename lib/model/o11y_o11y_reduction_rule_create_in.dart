//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yReductionRuleCreateIn {
  /// Returns a new [O11yO11yReductionRuleCreateIn] instance.
  O11yO11yReductionRuleCreateIn({
    this.labels = const [],
    required this.matchType,
    required this.metricName,
  });
  /// Labels are the label names the rule matches. Required, at least one.
  List<String> labels;

  /// MatchType is drop or keep: drop the named labels, or keep only them. Required.
  String matchType;

  /// MetricName is the metric the rule governs; one rule per metric. Required.
  String metricName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yReductionRuleCreateIn &&
    _deepEquality.equals(other.labels, labels) &&
    other.matchType == matchType &&
    other.metricName == metricName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (matchType.hashCode) +
    (metricName.hashCode);

  @override
  String toString() => 'O11yO11yReductionRuleCreateIn[labels=$labels, matchType=$matchType, metricName=$metricName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
      json[r'matchType'] = this.matchType;
      json[r'metricName'] = this.metricName;
    return json;
  }

  /// Returns a new [O11yO11yReductionRuleCreateIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yReductionRuleCreateIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yReductionRuleCreateIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yReductionRuleCreateIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yReductionRuleCreateIn(
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        matchType: mapValueOfType<String>(json, r'matchType')!,
        metricName: mapValueOfType<String>(json, r'metricName')!,
      );
    }
    return null;
  }

  static List<O11yO11yReductionRuleCreateIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yReductionRuleCreateIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yReductionRuleCreateIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yReductionRuleCreateIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yReductionRuleCreateIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yReductionRuleCreateIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yReductionRuleCreateIn-objects as value to a dart map
  static Map<String, List<O11yO11yReductionRuleCreateIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yReductionRuleCreateIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yReductionRuleCreateIn.listFromJson(entry.value, growable: growable,);
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

