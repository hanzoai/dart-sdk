//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner {
  /// Returns a new [O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner] instance.
  O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner({
    this.filterPattern,
    this.logGroupNamePrefix,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterPattern;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logGroupNamePrefix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner &&
    other.filterPattern == filterPattern &&
    other.logGroupNamePrefix == logGroupNamePrefix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filterPattern == null ? 0 : filterPattern!.hashCode) +
    (logGroupNamePrefix == null ? 0 : logGroupNamePrefix!.hashCode);

  @override
  String toString() => 'O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner[filterPattern=$filterPattern, logGroupNamePrefix=$logGroupNamePrefix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filterPattern != null) {
      json[r'filter_pattern'] = this.filterPattern;
    } else {
      json[r'filter_pattern'] = null;
    }
    if (this.logGroupNamePrefix != null) {
      json[r'log_group_name_prefix'] = this.logGroupNamePrefix;
    } else {
      json[r'log_group_name_prefix'] = null;
    }
    return json;
  }

  /// Returns a new [O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner(
        filterPattern: mapValueOfType<String>(json, r'filter_pattern'),
        logGroupNamePrefix: mapValueOfType<String>(json, r'log_group_name_prefix'),
      );
    }
    return null;
  }

  static List<O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner> mapFromJson(dynamic json) {
    final map = <String, O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner-objects as value to a dart map
  static Map<String, List<O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yOldAWSLogsStrategyCloudwatchLogsSubscriptionsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

