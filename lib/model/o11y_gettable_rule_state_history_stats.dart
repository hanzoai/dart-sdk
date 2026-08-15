//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGettableRuleStateHistoryStats {
  /// Returns a new [O11yGettableRuleStateHistoryStats] instance.
  O11yGettableRuleStateHistoryStats({
    this.currentAvgResolutionTime,
    this.currentAvgResolutionTimeSeries,
    this.currentTriggersSeries,
    this.pastAvgResolutionTime,
    this.pastAvgResolutionTimeSeries,
    this.pastTriggersSeries,
    this.totalCurrentTriggers,
    this.totalPastTriggers,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? currentAvgResolutionTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTimeSeries? currentAvgResolutionTimeSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTimeSeries? currentTriggersSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pastAvgResolutionTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTimeSeries? pastAvgResolutionTimeSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTimeSeries? pastTriggersSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCurrentTriggers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPastTriggers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGettableRuleStateHistoryStats &&
    other.currentAvgResolutionTime == currentAvgResolutionTime &&
    other.currentAvgResolutionTimeSeries == currentAvgResolutionTimeSeries &&
    other.currentTriggersSeries == currentTriggersSeries &&
    other.pastAvgResolutionTime == pastAvgResolutionTime &&
    other.pastAvgResolutionTimeSeries == pastAvgResolutionTimeSeries &&
    other.pastTriggersSeries == pastTriggersSeries &&
    other.totalCurrentTriggers == totalCurrentTriggers &&
    other.totalPastTriggers == totalPastTriggers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentAvgResolutionTime == null ? 0 : currentAvgResolutionTime!.hashCode) +
    (currentAvgResolutionTimeSeries == null ? 0 : currentAvgResolutionTimeSeries!.hashCode) +
    (currentTriggersSeries == null ? 0 : currentTriggersSeries!.hashCode) +
    (pastAvgResolutionTime == null ? 0 : pastAvgResolutionTime!.hashCode) +
    (pastAvgResolutionTimeSeries == null ? 0 : pastAvgResolutionTimeSeries!.hashCode) +
    (pastTriggersSeries == null ? 0 : pastTriggersSeries!.hashCode) +
    (totalCurrentTriggers == null ? 0 : totalCurrentTriggers!.hashCode) +
    (totalPastTriggers == null ? 0 : totalPastTriggers!.hashCode);

  @override
  String toString() => 'O11yGettableRuleStateHistoryStats[currentAvgResolutionTime=$currentAvgResolutionTime, currentAvgResolutionTimeSeries=$currentAvgResolutionTimeSeries, currentTriggersSeries=$currentTriggersSeries, pastAvgResolutionTime=$pastAvgResolutionTime, pastAvgResolutionTimeSeries=$pastAvgResolutionTimeSeries, pastTriggersSeries=$pastTriggersSeries, totalCurrentTriggers=$totalCurrentTriggers, totalPastTriggers=$totalPastTriggers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentAvgResolutionTime != null) {
      json[r'currentAvgResolutionTime'] = this.currentAvgResolutionTime;
    } else {
      json[r'currentAvgResolutionTime'] = null;
    }
    if (this.currentAvgResolutionTimeSeries != null) {
      json[r'currentAvgResolutionTimeSeries'] = this.currentAvgResolutionTimeSeries;
    } else {
      json[r'currentAvgResolutionTimeSeries'] = null;
    }
    if (this.currentTriggersSeries != null) {
      json[r'currentTriggersSeries'] = this.currentTriggersSeries;
    } else {
      json[r'currentTriggersSeries'] = null;
    }
    if (this.pastAvgResolutionTime != null) {
      json[r'pastAvgResolutionTime'] = this.pastAvgResolutionTime;
    } else {
      json[r'pastAvgResolutionTime'] = null;
    }
    if (this.pastAvgResolutionTimeSeries != null) {
      json[r'pastAvgResolutionTimeSeries'] = this.pastAvgResolutionTimeSeries;
    } else {
      json[r'pastAvgResolutionTimeSeries'] = null;
    }
    if (this.pastTriggersSeries != null) {
      json[r'pastTriggersSeries'] = this.pastTriggersSeries;
    } else {
      json[r'pastTriggersSeries'] = null;
    }
    if (this.totalCurrentTriggers != null) {
      json[r'totalCurrentTriggers'] = this.totalCurrentTriggers;
    } else {
      json[r'totalCurrentTriggers'] = null;
    }
    if (this.totalPastTriggers != null) {
      json[r'totalPastTriggers'] = this.totalPastTriggers;
    } else {
      json[r'totalPastTriggers'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGettableRuleStateHistoryStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGettableRuleStateHistoryStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGettableRuleStateHistoryStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGettableRuleStateHistoryStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGettableRuleStateHistoryStats(
        currentAvgResolutionTime: num.parse('${json[r'currentAvgResolutionTime']}'),
        currentAvgResolutionTimeSeries: O11yTimeSeries.fromJson(json[r'currentAvgResolutionTimeSeries']),
        currentTriggersSeries: O11yTimeSeries.fromJson(json[r'currentTriggersSeries']),
        pastAvgResolutionTime: num.parse('${json[r'pastAvgResolutionTime']}'),
        pastAvgResolutionTimeSeries: O11yTimeSeries.fromJson(json[r'pastAvgResolutionTimeSeries']),
        pastTriggersSeries: O11yTimeSeries.fromJson(json[r'pastTriggersSeries']),
        totalCurrentTriggers: mapValueOfType<int>(json, r'totalCurrentTriggers'),
        totalPastTriggers: mapValueOfType<int>(json, r'totalPastTriggers'),
      );
    }
    return null;
  }

  static List<O11yGettableRuleStateHistoryStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGettableRuleStateHistoryStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGettableRuleStateHistoryStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGettableRuleStateHistoryStats> mapFromJson(dynamic json) {
    final map = <String, O11yGettableRuleStateHistoryStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGettableRuleStateHistoryStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGettableRuleStateHistoryStats-objects as value to a dart map
  static Map<String, List<O11yGettableRuleStateHistoryStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGettableRuleStateHistoryStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGettableRuleStateHistoryStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

