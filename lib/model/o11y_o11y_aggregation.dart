//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yAggregation {
  /// Returns a new [O11yO11yAggregation] instance.
  O11yO11yAggregation({
    this.alias,
    this.anomalyScores = const [],
    this.index,
    this.lowerBoundSeries = const [],
    this.meta,
    this.predictedSeries = const [],
    this.series = const [],
    this.upperBoundSeries = const [],
  });

  /// Alias is the aggregation's alias.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alias;

  /// AnomalyScores are anomaly overlays.
  List<O11yO11yMetricSeries> anomalyScores;

  /// Index is the aggregation's position in the query.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  /// LowerBoundSeries are forecast lower bounds.
  List<O11yO11yMetricSeries> lowerBoundSeries;

  /// Meta describes the aggregation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yAggregationMeta? meta;

  /// PredictedSeries are forecast overlays, when the query asked for them.
  List<O11yO11yMetricSeries> predictedSeries;

  /// Series are the aggregated time series.
  List<O11yO11yMetricSeries> series;

  /// UpperBoundSeries are forecast upper bounds.
  List<O11yO11yMetricSeries> upperBoundSeries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yAggregation &&
    other.alias == alias &&
    _deepEquality.equals(other.anomalyScores, anomalyScores) &&
    other.index == index &&
    _deepEquality.equals(other.lowerBoundSeries, lowerBoundSeries) &&
    other.meta == meta &&
    _deepEquality.equals(other.predictedSeries, predictedSeries) &&
    _deepEquality.equals(other.series, series) &&
    _deepEquality.equals(other.upperBoundSeries, upperBoundSeries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alias == null ? 0 : alias!.hashCode) +
    (anomalyScores.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (lowerBoundSeries.hashCode) +
    (meta == null ? 0 : meta!.hashCode) +
    (predictedSeries.hashCode) +
    (series.hashCode) +
    (upperBoundSeries.hashCode);

  @override
  String toString() => 'O11yO11yAggregation[alias=$alias, anomalyScores=$anomalyScores, index=$index, lowerBoundSeries=$lowerBoundSeries, meta=$meta, predictedSeries=$predictedSeries, series=$series, upperBoundSeries=$upperBoundSeries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alias != null) {
      json[r'alias'] = this.alias;
    } else {
      json[r'alias'] = null;
    }
      json[r'anomalyScores'] = this.anomalyScores;
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
      json[r'lowerBoundSeries'] = this.lowerBoundSeries;
    if (this.meta != null) {
      json[r'meta'] = this.meta;
    } else {
      json[r'meta'] = null;
    }
      json[r'predictedSeries'] = this.predictedSeries;
      json[r'series'] = this.series;
      json[r'upperBoundSeries'] = this.upperBoundSeries;
    return json;
  }

  /// Returns a new [O11yO11yAggregation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yAggregation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yAggregation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yAggregation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yAggregation(
        alias: mapValueOfType<String>(json, r'alias'),
        anomalyScores: O11yO11yMetricSeries.listFromJson(json[r'anomalyScores']),
        index: mapValueOfType<int>(json, r'index'),
        lowerBoundSeries: O11yO11yMetricSeries.listFromJson(json[r'lowerBoundSeries']),
        meta: O11yO11yAggregationMeta.fromJson(json[r'meta']),
        predictedSeries: O11yO11yMetricSeries.listFromJson(json[r'predictedSeries']),
        series: O11yO11yMetricSeries.listFromJson(json[r'series']),
        upperBoundSeries: O11yO11yMetricSeries.listFromJson(json[r'upperBoundSeries']),
      );
    }
    return null;
  }

  static List<O11yO11yAggregation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yAggregation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yAggregation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yAggregation> mapFromJson(dynamic json) {
    final map = <String, O11yO11yAggregation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yAggregation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yAggregation-objects as value to a dart map
  static Map<String, List<O11yO11yAggregation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yAggregation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yAggregation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

