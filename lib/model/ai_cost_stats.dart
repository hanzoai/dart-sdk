//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiCostStats {
  /// Returns a new [AiCostStats] instance.
  AiCostStats({
    this.baselineModel,
    this.counterfactualIndex,
    this.cumulativeSavedIndex,
    this.pricedEvents,
    this.routedIndex,
    this.savedPct,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baselineModel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? counterfactualIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? cumulativeSavedIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pricedEvents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? routedIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? savedPct;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiCostStats &&
    other.baselineModel == baselineModel &&
    other.counterfactualIndex == counterfactualIndex &&
    other.cumulativeSavedIndex == cumulativeSavedIndex &&
    other.pricedEvents == pricedEvents &&
    other.routedIndex == routedIndex &&
    other.savedPct == savedPct;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (baselineModel == null ? 0 : baselineModel!.hashCode) +
    (counterfactualIndex == null ? 0 : counterfactualIndex!.hashCode) +
    (cumulativeSavedIndex == null ? 0 : cumulativeSavedIndex!.hashCode) +
    (pricedEvents == null ? 0 : pricedEvents!.hashCode) +
    (routedIndex == null ? 0 : routedIndex!.hashCode) +
    (savedPct == null ? 0 : savedPct!.hashCode);

  @override
  String toString() => 'AiCostStats[baselineModel=$baselineModel, counterfactualIndex=$counterfactualIndex, cumulativeSavedIndex=$cumulativeSavedIndex, pricedEvents=$pricedEvents, routedIndex=$routedIndex, savedPct=$savedPct]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.baselineModel != null) {
      json[r'baseline_model'] = this.baselineModel;
    } else {
      json[r'baseline_model'] = null;
    }
    if (this.counterfactualIndex != null) {
      json[r'counterfactual_index'] = this.counterfactualIndex;
    } else {
      json[r'counterfactual_index'] = null;
    }
    if (this.cumulativeSavedIndex != null) {
      json[r'cumulative_saved_index'] = this.cumulativeSavedIndex;
    } else {
      json[r'cumulative_saved_index'] = null;
    }
    if (this.pricedEvents != null) {
      json[r'priced_events'] = this.pricedEvents;
    } else {
      json[r'priced_events'] = null;
    }
    if (this.routedIndex != null) {
      json[r'routed_index'] = this.routedIndex;
    } else {
      json[r'routed_index'] = null;
    }
    if (this.savedPct != null) {
      json[r'saved_pct'] = this.savedPct;
    } else {
      json[r'saved_pct'] = null;
    }
    return json;
  }

  /// Returns a new [AiCostStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiCostStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiCostStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiCostStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiCostStats(
        baselineModel: mapValueOfType<String>(json, r'baseline_model'),
        counterfactualIndex: num.parse('${json[r'counterfactual_index']}'),
        cumulativeSavedIndex: num.parse('${json[r'cumulative_saved_index']}'),
        pricedEvents: mapValueOfType<int>(json, r'priced_events'),
        routedIndex: num.parse('${json[r'routed_index']}'),
        savedPct: num.parse('${json[r'saved_pct']}'),
      );
    }
    return null;
  }

  static List<AiCostStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiCostStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiCostStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiCostStats> mapFromJson(dynamic json) {
    final map = <String, AiCostStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiCostStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiCostStats-objects as value to a dart map
  static Map<String, List<AiCostStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiCostStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiCostStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

