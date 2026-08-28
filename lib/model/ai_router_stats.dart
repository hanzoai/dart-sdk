//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiRouterStats {
  /// Returns a new [AiRouterStats] instance.
  AiRouterStats({
    this.byModel = const {},
    this.bySource = const {},
    this.byTask = const {},
    this.cost,
    this.org,
    this.quality,
    this.retrain,
    this.scope,
    this.throughput,
    this.window,
  });
  Map<String, int> byModel;

  Map<String, int> bySource;

  Map<String, AiTaskStats> byTask;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiCostStats? cost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiQualityStats? quality;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiRetrainMeta? retrain;

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
  AiThroughputStats? throughput;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiStatsWindow? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiRouterStats &&
    _deepEquality.equals(other.byModel, byModel) &&
    _deepEquality.equals(other.bySource, bySource) &&
    _deepEquality.equals(other.byTask, byTask) &&
    other.cost == cost &&
    other.org == org &&
    other.quality == quality &&
    other.retrain == retrain &&
    other.scope == scope &&
    other.throughput == throughput &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byModel.hashCode) +
    (bySource.hashCode) +
    (byTask.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (quality == null ? 0 : quality!.hashCode) +
    (retrain == null ? 0 : retrain!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (throughput == null ? 0 : throughput!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'AiRouterStats[byModel=$byModel, bySource=$bySource, byTask=$byTask, cost=$cost, org=$org, quality=$quality, retrain=$retrain, scope=$scope, throughput=$throughput, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'by_model'] = this.byModel;
      json[r'by_source'] = this.bySource;
      json[r'by_task'] = this.byTask;
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.quality != null) {
      json[r'quality'] = this.quality;
    } else {
      json[r'quality'] = null;
    }
    if (this.retrain != null) {
      json[r'retrain'] = this.retrain;
    } else {
      json[r'retrain'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.throughput != null) {
      json[r'throughput'] = this.throughput;
    } else {
      json[r'throughput'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [AiRouterStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiRouterStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiRouterStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiRouterStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiRouterStats(
        byModel: mapCastOfType<String, int>(json, r'by_model') ?? const {},
        bySource: mapCastOfType<String, int>(json, r'by_source') ?? const {},
        byTask: AiTaskStats.mapFromJson(json[r'by_task']),
        cost: AiCostStats.fromJson(json[r'cost']),
        org: mapValueOfType<String>(json, r'org'),
        quality: AiQualityStats.fromJson(json[r'quality']),
        retrain: AiRetrainMeta.fromJson(json[r'retrain']),
        scope: mapValueOfType<String>(json, r'scope'),
        throughput: AiThroughputStats.fromJson(json[r'throughput']),
        window: AiStatsWindow.fromJson(json[r'window']),
      );
    }
    return null;
  }

  static List<AiRouterStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiRouterStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiRouterStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiRouterStats> mapFromJson(dynamic json) {
    final map = <String, AiRouterStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiRouterStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiRouterStats-objects as value to a dart map
  static Map<String, List<AiRouterStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiRouterStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiRouterStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

