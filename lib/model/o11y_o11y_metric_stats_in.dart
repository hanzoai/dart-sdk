//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yMetricStatsIn {
  /// Returns a new [O11yO11yMetricStatsIn] instance.
  O11yO11yMetricStatsIn({
    required this.end,
    this.filter,
    required this.limit,
    this.offset,
    this.orderBy,
    required this.start,
  });
  /// End is the end of the window as a Unix timestamp in milliseconds. Required.
  int end;

  /// Filter narrows the metrics counted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yMetricFilter? filter;

  /// Limit caps how many metrics come back, between 1 and 5000. Required.
  int limit;

  /// Offset is how many metrics to skip, for paging.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// OrderBy sorts the page, by samples or timeseries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yMetricOrder? orderBy;

  /// Start is the start of the window as a Unix timestamp in milliseconds. Required.
  int start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yMetricStatsIn &&
    other.end == end &&
    other.filter == filter &&
    other.limit == limit &&
    other.offset == offset &&
    other.orderBy == orderBy &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (limit.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (orderBy == null ? 0 : orderBy!.hashCode) +
    (start.hashCode);

  @override
  String toString() => 'O11yO11yMetricStatsIn[end=$end, filter=$filter, limit=$limit, offset=$offset, orderBy=$orderBy, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'end'] = this.end;
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
      json[r'limit'] = this.limit;
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.orderBy != null) {
      json[r'orderBy'] = this.orderBy;
    } else {
      json[r'orderBy'] = null;
    }
      json[r'start'] = this.start;
    return json;
  }

  /// Returns a new [O11yO11yMetricStatsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yMetricStatsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yMetricStatsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yMetricStatsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yMetricStatsIn(
        end: mapValueOfType<int>(json, r'end')!,
        filter: O11yO11yMetricFilter.fromJson(json[r'filter']),
        limit: mapValueOfType<int>(json, r'limit')!,
        offset: mapValueOfType<int>(json, r'offset'),
        orderBy: O11yO11yMetricOrder.fromJson(json[r'orderBy']),
        start: mapValueOfType<int>(json, r'start')!,
      );
    }
    return null;
  }

  static List<O11yO11yMetricStatsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yMetricStatsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yMetricStatsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yMetricStatsIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yMetricStatsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yMetricStatsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yMetricStatsIn-objects as value to a dart map
  static Map<String, List<O11yO11yMetricStatsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yMetricStatsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yMetricStatsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'end',
    'limit',
    'start',
  };
}

