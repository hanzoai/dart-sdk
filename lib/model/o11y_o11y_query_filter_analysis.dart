//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueryFilterAnalysis {
  /// Returns a new [O11yO11yQueryFilterAnalysis] instance.
  O11yO11yQueryFilterAnalysis({
    this.groups = const [],
    this.metricNames = const [],
  });
  /// Groups are the columns the query groups by.
  List<O11yO11yColumnInfo> groups;

  /// MetricNames are the metrics the query reads.
  List<String> metricNames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueryFilterAnalysis &&
    _deepEquality.equals(other.groups, groups) &&
    _deepEquality.equals(other.metricNames, metricNames);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groups.hashCode) +
    (metricNames.hashCode);

  @override
  String toString() => 'O11yO11yQueryFilterAnalysis[groups=$groups, metricNames=$metricNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'groups'] = this.groups;
      json[r'metricNames'] = this.metricNames;
    return json;
  }

  /// Returns a new [O11yO11yQueryFilterAnalysis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueryFilterAnalysis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueryFilterAnalysis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueryFilterAnalysis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueryFilterAnalysis(
        groups: O11yO11yColumnInfo.listFromJson(json[r'groups']),
        metricNames: json[r'metricNames'] is Iterable
            ? (json[r'metricNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yO11yQueryFilterAnalysis> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueryFilterAnalysis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueryFilterAnalysis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueryFilterAnalysis> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueryFilterAnalysis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueryFilterAnalysis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueryFilterAnalysis-objects as value to a dart map
  static Map<String, List<O11yO11yQueryFilterAnalysis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueryFilterAnalysis>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueryFilterAnalysis.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

