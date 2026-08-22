//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yCompositeQuery {
  /// Returns a new [O11yCompositeQuery] instance.
  O11yCompositeQuery({
    this.builderQueries = const {},
    this.chQueries = const {},
    this.fillGaps,
    this.panelType,
    this.promQueries = const {},
    this.queries = const [],
    this.queryType,
    this.unit,
  });
  Map<String, O11yBuilderQuery> builderQueries;

  Map<String, O11yDatastoreQuery> chQueries;

  /// FillGaps is used to fill the gaps in the time series data
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fillGaps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? panelType;

  Map<String, O11yPromQuery> promQueries;

  List<O11yQueryEnvelope> queries;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queryType;

  /// Unit for the time series data shown in the graph This is used in alerts to format the value and threshold
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yCompositeQuery &&
    _deepEquality.equals(other.builderQueries, builderQueries) &&
    _deepEquality.equals(other.chQueries, chQueries) &&
    other.fillGaps == fillGaps &&
    other.panelType == panelType &&
    _deepEquality.equals(other.promQueries, promQueries) &&
    _deepEquality.equals(other.queries, queries) &&
    other.queryType == queryType &&
    other.unit == unit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (builderQueries.hashCode) +
    (chQueries.hashCode) +
    (fillGaps == null ? 0 : fillGaps!.hashCode) +
    (panelType == null ? 0 : panelType!.hashCode) +
    (promQueries.hashCode) +
    (queries.hashCode) +
    (queryType == null ? 0 : queryType!.hashCode) +
    (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'O11yCompositeQuery[builderQueries=$builderQueries, chQueries=$chQueries, fillGaps=$fillGaps, panelType=$panelType, promQueries=$promQueries, queries=$queries, queryType=$queryType, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'builderQueries'] = this.builderQueries;
      json[r'chQueries'] = this.chQueries;
    if (this.fillGaps != null) {
      json[r'fillGaps'] = this.fillGaps;
    } else {
      json[r'fillGaps'] = null;
    }
    if (this.panelType != null) {
      json[r'panelType'] = this.panelType;
    } else {
      json[r'panelType'] = null;
    }
      json[r'promQueries'] = this.promQueries;
      json[r'queries'] = this.queries;
    if (this.queryType != null) {
      json[r'queryType'] = this.queryType;
    } else {
      json[r'queryType'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    return json;
  }

  /// Returns a new [O11yCompositeQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yCompositeQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yCompositeQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yCompositeQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yCompositeQuery(
        builderQueries: O11yBuilderQuery.mapFromJson(json[r'builderQueries']),
        chQueries: O11yDatastoreQuery.mapFromJson(json[r'chQueries']),
        fillGaps: mapValueOfType<bool>(json, r'fillGaps'),
        panelType: mapValueOfType<String>(json, r'panelType'),
        promQueries: O11yPromQuery.mapFromJson(json[r'promQueries']),
        queries: O11yQueryEnvelope.listFromJson(json[r'queries']),
        queryType: mapValueOfType<String>(json, r'queryType'),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<O11yCompositeQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yCompositeQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yCompositeQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yCompositeQuery> mapFromJson(dynamic json) {
    final map = <String, O11yCompositeQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yCompositeQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yCompositeQuery-objects as value to a dart map
  static Map<String, List<O11yCompositeQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yCompositeQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yCompositeQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

