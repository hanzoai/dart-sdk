//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricSeriesSet {
  /// Returns a new [O11yO11yMetricSeriesSet] instance.
  O11yO11yMetricSeriesSet({
    this.series = const [],
  });
  /// Series are the time series.
  List<O11yO11yMetricSeries> series;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricSeriesSet &&
    _deepEquality.equals(other.series, series);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (series.hashCode);

  @override
  String toString() => 'O11yO11yMetricSeriesSet[series=$series]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'series'] = this.series;
    return json;
  }

  /// Returns a new [O11yO11yMetricSeriesSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricSeriesSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricSeriesSet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricSeriesSet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricSeriesSet(
        series: O11yO11yMetricSeries.listFromJson(json[r'series']),
      );
    }
    return null;
  }

  static List<O11yO11yMetricSeriesSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricSeriesSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricSeriesSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricSeriesSet> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricSeriesSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricSeriesSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricSeriesSet-objects as value to a dart map
  static Map<String, List<O11yO11yMetricSeriesSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricSeriesSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricSeriesSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

