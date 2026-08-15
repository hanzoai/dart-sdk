//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yOldAWSLogsStrategy {
  /// Returns a new [O11yOldAWSLogsStrategy] instance.
  O11yOldAWSLogsStrategy({
    this.cloudwatchLogsSubscriptions = const [],
  });

  List<O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner> cloudwatchLogsSubscriptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yOldAWSLogsStrategy &&
    _deepEquality.equals(other.cloudwatchLogsSubscriptions, cloudwatchLogsSubscriptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloudwatchLogsSubscriptions.hashCode);

  @override
  String toString() => 'O11yOldAWSLogsStrategy[cloudwatchLogsSubscriptions=$cloudwatchLogsSubscriptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cloudwatch_logs_subscriptions'] = this.cloudwatchLogsSubscriptions;
    return json;
  }

  /// Returns a new [O11yOldAWSLogsStrategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yOldAWSLogsStrategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yOldAWSLogsStrategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yOldAWSLogsStrategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yOldAWSLogsStrategy(
        cloudwatchLogsSubscriptions: O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner.listFromJson(json[r'cloudwatch_logs_subscriptions']),
      );
    }
    return null;
  }

  static List<O11yOldAWSLogsStrategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yOldAWSLogsStrategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yOldAWSLogsStrategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yOldAWSLogsStrategy> mapFromJson(dynamic json) {
    final map = <String, O11yOldAWSLogsStrategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yOldAWSLogsStrategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yOldAWSLogsStrategy-objects as value to a dart map
  static Map<String, List<O11yOldAWSLogsStrategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yOldAWSLogsStrategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yOldAWSLogsStrategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

