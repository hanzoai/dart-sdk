//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAWSCloudWatchMetricStreamFilter {
  /// Returns a new [O11yAWSCloudWatchMetricStreamFilter] instance.
  O11yAWSCloudWatchMetricStreamFilter({
    this.metricNames = const [],
    this.namespace,
  });
  List<String> metricNames;

  /// https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamfilter.html
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAWSCloudWatchMetricStreamFilter &&
    _deepEquality.equals(other.metricNames, metricNames) &&
    other.namespace == namespace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metricNames.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode);

  @override
  String toString() => 'O11yAWSCloudWatchMetricStreamFilter[metricNames=$metricNames, namespace=$namespace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'metricNames'] = this.metricNames;
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAWSCloudWatchMetricStreamFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAWSCloudWatchMetricStreamFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAWSCloudWatchMetricStreamFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAWSCloudWatchMetricStreamFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAWSCloudWatchMetricStreamFilter(
        metricNames: json[r'metricNames'] is Iterable
            ? (json[r'metricNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        namespace: mapValueOfType<String>(json, r'namespace'),
      );
    }
    return null;
  }

  static List<O11yAWSCloudWatchMetricStreamFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAWSCloudWatchMetricStreamFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAWSCloudWatchMetricStreamFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAWSCloudWatchMetricStreamFilter> mapFromJson(dynamic json) {
    final map = <String, O11yAWSCloudWatchMetricStreamFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAWSCloudWatchMetricStreamFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAWSCloudWatchMetricStreamFilter-objects as value to a dart map
  static Map<String, List<O11yAWSCloudWatchMetricStreamFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAWSCloudWatchMetricStreamFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAWSCloudWatchMetricStreamFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

