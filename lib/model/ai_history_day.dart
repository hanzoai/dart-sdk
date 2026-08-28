//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiHistoryDay {
  /// Returns a new [AiHistoryDay] instance.
  AiHistoryDay({
    this.byTask = const {},
    this.costSavedIndex,
    this.cumulativeCostSaved,
    this.date,
    this.events,
    this.learnedShare,
    this.rewardRate,
    this.rewardedEvents,
  });
  Map<String, int> byTask;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? costSavedIndex;

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
  String? date;

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
  num? learnedShare;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rewardRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rewardedEvents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiHistoryDay &&
    _deepEquality.equals(other.byTask, byTask) &&
    other.costSavedIndex == costSavedIndex &&
    other.cumulativeCostSaved == cumulativeCostSaved &&
    other.date == date &&
    other.events == events &&
    other.learnedShare == learnedShare &&
    other.rewardRate == rewardRate &&
    other.rewardedEvents == rewardedEvents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byTask.hashCode) +
    (costSavedIndex == null ? 0 : costSavedIndex!.hashCode) +
    (cumulativeCostSaved == null ? 0 : cumulativeCostSaved!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (learnedShare == null ? 0 : learnedShare!.hashCode) +
    (rewardRate == null ? 0 : rewardRate!.hashCode) +
    (rewardedEvents == null ? 0 : rewardedEvents!.hashCode);

  @override
  String toString() => 'AiHistoryDay[byTask=$byTask, costSavedIndex=$costSavedIndex, cumulativeCostSaved=$cumulativeCostSaved, date=$date, events=$events, learnedShare=$learnedShare, rewardRate=$rewardRate, rewardedEvents=$rewardedEvents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'by_task'] = this.byTask;
    if (this.costSavedIndex != null) {
      json[r'cost_saved_index'] = this.costSavedIndex;
    } else {
      json[r'cost_saved_index'] = null;
    }
    if (this.cumulativeCostSaved != null) {
      json[r'cumulative_cost_saved'] = this.cumulativeCostSaved;
    } else {
      json[r'cumulative_cost_saved'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.learnedShare != null) {
      json[r'learned_share'] = this.learnedShare;
    } else {
      json[r'learned_share'] = null;
    }
    if (this.rewardRate != null) {
      json[r'reward_rate'] = this.rewardRate;
    } else {
      json[r'reward_rate'] = null;
    }
    if (this.rewardedEvents != null) {
      json[r'rewarded_events'] = this.rewardedEvents;
    } else {
      json[r'rewarded_events'] = null;
    }
    return json;
  }

  /// Returns a new [AiHistoryDay] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiHistoryDay? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiHistoryDay[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiHistoryDay[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiHistoryDay(
        byTask: mapCastOfType<String, int>(json, r'by_task') ?? const {},
        costSavedIndex: num.parse('${json[r'cost_saved_index']}'),
        cumulativeCostSaved: num.parse('${json[r'cumulative_cost_saved']}'),
        date: mapValueOfType<String>(json, r'date'),
        events: mapValueOfType<int>(json, r'events'),
        learnedShare: num.parse('${json[r'learned_share']}'),
        rewardRate: num.parse('${json[r'reward_rate']}'),
        rewardedEvents: mapValueOfType<int>(json, r'rewarded_events'),
      );
    }
    return null;
  }

  static List<AiHistoryDay> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiHistoryDay>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiHistoryDay.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiHistoryDay> mapFromJson(dynamic json) {
    final map = <String, AiHistoryDay>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiHistoryDay.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiHistoryDay-objects as value to a dart map
  static Map<String, List<AiHistoryDay>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiHistoryDay>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiHistoryDay.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

