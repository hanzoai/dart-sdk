//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGlobal {
  /// Returns a new [O11yGlobal] instance.
  O11yGlobal({
    this.end,
    this.llm,
    this.logSeries = const [],
    this.range,
    this.series = const [],
    this.start,
    this.topModels = const [],
    this.topOrgs = const [],
    this.topServices = const [],
    this.totals,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLLM? llm;

  List<O11yLogPoint> logSeries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  List<O11ySeries> series;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  List<O11yModelStat> topModels;

  List<O11yOrgStat> topOrgs;

  List<O11ySvcStat> topServices;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGlobal &&
    other.end == end &&
    other.llm == llm &&
    _deepEquality.equals(other.logSeries, logSeries) &&
    other.range == range &&
    _deepEquality.equals(other.series, series) &&
    other.start == start &&
    _deepEquality.equals(other.topModels, topModels) &&
    _deepEquality.equals(other.topOrgs, topOrgs) &&
    _deepEquality.equals(other.topServices, topServices) &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (llm == null ? 0 : llm!.hashCode) +
    (logSeries.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (series.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (topModels.hashCode) +
    (topOrgs.hashCode) +
    (topServices.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'O11yGlobal[end=$end, llm=$llm, logSeries=$logSeries, range=$range, series=$series, start=$start, topModels=$topModels, topOrgs=$topOrgs, topServices=$topServices, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.llm != null) {
      json[r'llm'] = this.llm;
    } else {
      json[r'llm'] = null;
    }
      json[r'logSeries'] = this.logSeries;
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
      json[r'series'] = this.series;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'topModels'] = this.topModels;
      json[r'topOrgs'] = this.topOrgs;
      json[r'topServices'] = this.topServices;
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [O11yGlobal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGlobal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGlobal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGlobal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGlobal(
        end: mapValueOfType<String>(json, r'end'),
        llm: O11yLLM.fromJson(json[r'llm']),
        logSeries: O11yLogPoint.listFromJson(json[r'logSeries']),
        range: mapValueOfType<String>(json, r'range'),
        series: O11ySeries.listFromJson(json[r'series']),
        start: mapValueOfType<String>(json, r'start'),
        topModels: O11yModelStat.listFromJson(json[r'topModels']),
        topOrgs: O11yOrgStat.listFromJson(json[r'topOrgs']),
        topServices: O11ySvcStat.listFromJson(json[r'topServices']),
        totals: O11yTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<O11yGlobal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGlobal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGlobal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGlobal> mapFromJson(dynamic json) {
    final map = <String, O11yGlobal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGlobal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGlobal-objects as value to a dart map
  static Map<String, List<O11yGlobal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGlobal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGlobal.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

