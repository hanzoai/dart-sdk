//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiRouterHistory {
  /// Returns a new [AiRouterHistory] instance.
  AiRouterHistory({
    this.daily = const [],
    this.retrains = const [],
    this.scope,
    this.totals,
    this.window,
  });
  List<AiHistoryDay> daily;

  List<AiHistoryRetrain> retrains;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiHistoryTotals? totals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiHistoryWindow? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiRouterHistory &&
    _deepEquality.equals(other.daily, daily) &&
    _deepEquality.equals(other.retrains, retrains) &&
    other.scope == scope &&
    other.totals == totals &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (daily.hashCode) +
    (retrains.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (totals == null ? 0 : totals!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'AiRouterHistory[daily=$daily, retrains=$retrains, scope=$scope, totals=$totals, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'daily'] = this.daily;
      json[r'retrains'] = this.retrains;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [AiRouterHistory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiRouterHistory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiRouterHistory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiRouterHistory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiRouterHistory(
        daily: AiHistoryDay.listFromJson(json[r'daily']),
        retrains: AiHistoryRetrain.listFromJson(json[r'retrains']),
        scope: mapValueOfType<String>(json, r'scope'),
        totals: AiHistoryTotals.fromJson(json[r'totals']),
        window: AiHistoryWindow.fromJson(json[r'window']),
      );
    }
    return null;
  }

  static List<AiRouterHistory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiRouterHistory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiRouterHistory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiRouterHistory> mapFromJson(dynamic json) {
    final map = <String, AiRouterHistory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiRouterHistory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiRouterHistory-objects as value to a dart map
  static Map<String, List<AiRouterHistory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiRouterHistory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiRouterHistory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

