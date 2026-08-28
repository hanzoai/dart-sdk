//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiHistoryTotals {
  /// Returns a new [AiHistoryTotals] instance.
  AiHistoryTotals({
    this.cumulativeCostSaved,
    this.daysActive,
    this.events,
    this.rewardRate,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cumulativeCostSaved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? daysActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rewardRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiHistoryTotals &&
    other.cumulativeCostSaved == cumulativeCostSaved &&
    other.daysActive == daysActive &&
    other.events == events &&
    other.rewardRate == rewardRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cumulativeCostSaved == null ? 0 : cumulativeCostSaved!.hashCode) +
    (daysActive == null ? 0 : daysActive!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (rewardRate == null ? 0 : rewardRate!.hashCode);

  @override
  String toString() => 'AiHistoryTotals[cumulativeCostSaved=$cumulativeCostSaved, daysActive=$daysActive, events=$events, rewardRate=$rewardRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cumulativeCostSaved != null) {
      json[r'cumulative_cost_saved'] = this.cumulativeCostSaved;
    } else {
      json[r'cumulative_cost_saved'] = null;
    }
    if (this.daysActive != null) {
      json[r'days_active'] = this.daysActive;
    } else {
      json[r'days_active'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.rewardRate != null) {
      json[r'reward_rate'] = this.rewardRate;
    } else {
      json[r'reward_rate'] = null;
    }
    return json;
  }

  /// Returns a new [AiHistoryTotals] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiHistoryTotals? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiHistoryTotals[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiHistoryTotals[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiHistoryTotals(
        cumulativeCostSaved: num.parse('${json[r'cumulative_cost_saved']}'),
        daysActive: mapValueOfType<int>(json, r'days_active'),
        events: mapValueOfType<int>(json, r'events'),
        rewardRate: num.parse('${json[r'reward_rate']}'),
      );
    }
    return null;
  }

  static List<AiHistoryTotals> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiHistoryTotals>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiHistoryTotals.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiHistoryTotals> mapFromJson(dynamic json) {
    final map = <String, AiHistoryTotals>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiHistoryTotals.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiHistoryTotals-objects as value to a dart map
  static Map<String, List<AiHistoryTotals>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiHistoryTotals>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiHistoryTotals.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

