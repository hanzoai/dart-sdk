//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDiscoverIn {
  /// Returns a new [O11yO11yDiscoverIn] instance.
  O11yO11yDiscoverIn({
    this.aggregations = const [],
    this.filters = const [],
    this.groupBy = const [],
    this.limit,
    this.orderBy,
    this.orderDir,
    this.period,
    required this.project,
  });
  /// Aggregations are the measures to compute per group. Empty means a count.
  List<String> aggregations;

  /// Filters narrow the scan; each is a field, an operator (eq, neq, like) and a value, and they combine with AND.
  List<O11yO11yFilter> filters;

  /// GroupBy are the columns to group the rows by.
  List<String> groupBy;

  /// Limit caps how many rows come back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// OrderBy is the column or aggregation to sort the rows on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderBy;

  /// OrderDir is asc or desc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderDir;

  /// Period is the window to read, relative to now — 1h, 24h, 7d, 14d, 30d.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// Project is the project to read, as its id. Required.
  String project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDiscoverIn &&
    _deepEquality.equals(other.aggregations, aggregations) &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.groupBy, groupBy) &&
    other.limit == limit &&
    other.orderBy == orderBy &&
    other.orderDir == orderDir &&
    other.period == period &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggregations.hashCode) +
    (filters.hashCode) +
    (groupBy.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (orderBy == null ? 0 : orderBy!.hashCode) +
    (orderDir == null ? 0 : orderDir!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (project.hashCode);

  @override
  String toString() => 'O11yO11yDiscoverIn[aggregations=$aggregations, filters=$filters, groupBy=$groupBy, limit=$limit, orderBy=$orderBy, orderDir=$orderDir, period=$period, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'aggregations'] = this.aggregations;
      json[r'filters'] = this.filters;
      json[r'groupBy'] = this.groupBy;
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.orderBy != null) {
      json[r'orderBy'] = this.orderBy;
    } else {
      json[r'orderBy'] = null;
    }
    if (this.orderDir != null) {
      json[r'orderDir'] = this.orderDir;
    } else {
      json[r'orderDir'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
      json[r'project'] = this.project;
    return json;
  }

  /// Returns a new [O11yO11yDiscoverIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDiscoverIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDiscoverIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDiscoverIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDiscoverIn(
        aggregations: json[r'aggregations'] is Iterable
            ? (json[r'aggregations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        filters: O11yO11yFilter.listFromJson(json[r'filters']),
        groupBy: json[r'groupBy'] is Iterable
            ? (json[r'groupBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        limit: mapValueOfType<int>(json, r'limit'),
        orderBy: mapValueOfType<String>(json, r'orderBy'),
        orderDir: mapValueOfType<String>(json, r'orderDir'),
        period: mapValueOfType<String>(json, r'period'),
        project: mapValueOfType<String>(json, r'project')!,
      );
    }
    return null;
  }

  static List<O11yO11yDiscoverIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDiscoverIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDiscoverIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDiscoverIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDiscoverIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDiscoverIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDiscoverIn-objects as value to a dart map
  static Map<String, List<O11yO11yDiscoverIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDiscoverIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDiscoverIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project',
  };
}

