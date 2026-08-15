//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Timeseries {
  /// Returns a new [Timeseries] instance.
  Timeseries({
    this.end,
    this.interval,
    this.range,
    this.scope,
    this.series = const [],
    this.source_,
    this.start,
  });

  /// End is the window's exclusive upper bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Interval is the bucket width: hour or day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  /// Range is the window that was actually applied: 24h, 7d, 30d or custom.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Scope names the tenant these numbers belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Scope? scope;

  /// Series is one point per bucket, oldest first, with empty buckets zero-filled.
  List<UsagePoint> series;

  /// Source is the warehouse table the series read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Start is the window's inclusive lower bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Timeseries &&
    other.end == end &&
    other.interval == interval &&
    other.range == range &&
    other.scope == scope &&
    _deepEquality.equals(other.series, series) &&
    other.source_ == source_ &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (series.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'Timeseries[end=$end, interval=$interval, range=$range, scope=$scope, series=$series, source_=$source_, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'series'] = this.series;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [Timeseries] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Timeseries? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Timeseries[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Timeseries[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Timeseries(
        end: mapValueOfType<String>(json, r'end'),
        interval: mapValueOfType<String>(json, r'interval'),
        range: mapValueOfType<String>(json, r'range'),
        scope: Scope.fromJson(json[r'scope']),
        series: UsagePoint.listFromJson(json[r'series']),
        source_: mapValueOfType<String>(json, r'source'),
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<Timeseries> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Timeseries>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Timeseries.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Timeseries> mapFromJson(dynamic json) {
    final map = <String, Timeseries>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Timeseries.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Timeseries-objects as value to a dart map
  static Map<String, List<Timeseries>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Timeseries>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Timeseries.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

