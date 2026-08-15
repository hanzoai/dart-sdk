//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UsageData {
  /// Returns a new [UsageData] instance.
  UsageData({
    this.byModel = const [],
    this.series = const [],
    this.totals,
  });

  List<UsageByModel> byModel;

  List<UsagePoint> series;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UsageTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsageData &&
    _deepEquality.equals(other.byModel, byModel) &&
    _deepEquality.equals(other.series, series) &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byModel.hashCode) +
    (series.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'UsageData[byModel=$byModel, series=$series, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byModel'] = this.byModel;
      json[r'series'] = this.series;
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [UsageData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsageData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsageData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsageData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsageData(
        byModel: UsageByModel.listFromJson(json[r'byModel']),
        series: UsagePoint.listFromJson(json[r'series']),
        totals: UsageTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<UsageData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsageData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsageData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsageData> mapFromJson(dynamic json) {
    final map = <String, UsageData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsageData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsageData-objects as value to a dart map
  static Map<String, List<UsageData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsageData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsageData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

