//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableTraceAggregations {
  /// Returns a new [O11yGettableTraceAggregations] instance.
  O11yGettableTraceAggregations({
    this.aggregations = const [],
  });

  List<O11ySpanAggregationResult> aggregations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableTraceAggregations &&
    _deepEquality.equals(other.aggregations, aggregations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggregations.hashCode);

  @override
  String toString() => 'O11yGettableTraceAggregations[aggregations=$aggregations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aggregations'] = this.aggregations;
    return json;
  }

  /// Returns a new [O11yGettableTraceAggregations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableTraceAggregations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableTraceAggregations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableTraceAggregations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableTraceAggregations(
        aggregations: O11ySpanAggregationResult.listFromJson(json[r'aggregations']),
      );
    }
    return null;
  }

  static List<O11yGettableTraceAggregations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableTraceAggregations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableTraceAggregations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableTraceAggregations> mapFromJson(dynamic json) {
    final map = <String, O11yGettableTraceAggregations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableTraceAggregations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableTraceAggregations-objects as value to a dart map
  static Map<String, List<O11yGettableTraceAggregations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableTraceAggregations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableTraceAggregations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

