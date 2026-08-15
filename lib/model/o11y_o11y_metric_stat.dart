//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricStat {
  /// Returns a new [O11yO11yMetricStat] instance.
  O11yO11yMetricStat({
    this.description,
    this.metricName,
    this.samples,
    this.timeseries,
    this.type,
    this.unit,
  });

  /// Description describes the metric.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// MetricName is the metric's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metricName;

  /// Samples is how many samples the metric had.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? samples;

  /// TimeSeries is how many time series the metric had.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeseries;

  /// Type is the metric type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Unit is the metric's unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricStat &&
    other.description == description &&
    other.metricName == metricName &&
    other.samples == samples &&
    other.timeseries == timeseries &&
    other.type == type &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description == null ? 0 : description!.hashCode) +
    (metricName == null ? 0 : metricName!.hashCode) +
    (samples == null ? 0 : samples!.hashCode) +
    (timeseries == null ? 0 : timeseries!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'O11yO11yMetricStat[description=$description, metricName=$metricName, samples=$samples, timeseries=$timeseries, type=$type, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.metricName != null) {
      json[r'metricName'] = this.metricName;
    } else {
      json[r'metricName'] = null;
    }
    if (this.samples != null) {
      json[r'samples'] = this.samples;
    } else {
      json[r'samples'] = null;
    }
    if (this.timeseries != null) {
      json[r'timeseries'] = this.timeseries;
    } else {
      json[r'timeseries'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yMetricStat] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricStat? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricStat[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricStat[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricStat(
        description: mapValueOfType<String>(json, r'description'),
        metricName: mapValueOfType<String>(json, r'metricName'),
        samples: mapValueOfType<int>(json, r'samples'),
        timeseries: mapValueOfType<int>(json, r'timeseries'),
        type: mapValueOfType<String>(json, r'type'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<O11yO11yMetricStat> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricStat>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricStat.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricStat> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricStat>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricStat.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricStat-objects as value to a dart map
  static Map<String, List<O11yO11yMetricStat>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricStat>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricStat.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

