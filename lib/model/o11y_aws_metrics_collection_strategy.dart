//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAWSMetricsCollectionStrategy {
  /// Returns a new [O11yAWSMetricsCollectionStrategy] instance.
  O11yAWSMetricsCollectionStrategy({
    this.streamFilters = const [],
  });

  /// to be used as https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-metricstream.html#cfn-cloudwatch-metricstream-includefilters
  List<O11yAWSCloudWatchMetricStreamFilter> streamFilters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAWSMetricsCollectionStrategy &&
    _deepEquality.equals(other.streamFilters, streamFilters);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (streamFilters.hashCode);

  @override
  String toString() => 'O11yAWSMetricsCollectionStrategy[streamFilters=$streamFilters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'streamFilters'] = this.streamFilters;
    return json;
  }

  /// Returns a new [O11yAWSMetricsCollectionStrategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAWSMetricsCollectionStrategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAWSMetricsCollectionStrategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAWSMetricsCollectionStrategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAWSMetricsCollectionStrategy(
        streamFilters: O11yAWSCloudWatchMetricStreamFilter.listFromJson(json[r'streamFilters']),
      );
    }
    return null;
  }

  static List<O11yAWSMetricsCollectionStrategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAWSMetricsCollectionStrategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAWSMetricsCollectionStrategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAWSMetricsCollectionStrategy> mapFromJson(dynamic json) {
    final map = <String, O11yAWSMetricsCollectionStrategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAWSMetricsCollectionStrategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAWSMetricsCollectionStrategy-objects as value to a dart map
  static Map<String, List<O11yAWSMetricsCollectionStrategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAWSMetricsCollectionStrategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAWSMetricsCollectionStrategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

