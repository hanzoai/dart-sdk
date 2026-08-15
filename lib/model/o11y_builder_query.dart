//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yBuilderQuery {
  /// Returns a new [O11yBuilderQuery] instance.
  O11yBuilderQuery({
    this.isAnomaly,
    this.queriesUsedInFormula = const [],
    this.shiftBy,
    this.aggregateAttribute,
    this.aggregateOperator,
    this.dataSource,
    this.disabled,
    this.expression,
    this.filters,
    this.functions = const [],
    this.groupBy = const [],
    this.having = const [],
    this.legend,
    this.limit,
    this.offset,
    this.orderBy = const [],
    this.pageSize,
    this.queryName,
    this.reduceTo,
    this.selectColumns = const [],
    this.seriesAggregation,
    this.spaceAggregation,
    this.stepInterval,
    this.temporality,
    this.timeAggregation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAnomaly;

  List<String> queriesUsedInFormula;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shiftBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yAttributeKey? aggregateAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aggregateOperator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expression;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yFilterSet? filters;

  List<O11yFunction> functions;

  List<O11yAttributeKey> groupBy;

  List<O11yHaving> having;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? legend;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  List<O11yOrderBy> orderBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queryName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reduceTo;

  List<O11yAttributeKey> selectColumns;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seriesAggregation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spaceAggregation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stepInterval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? temporality;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeAggregation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yBuilderQuery &&
    other.isAnomaly == isAnomaly &&
    _deepEquality.equals(other.queriesUsedInFormula, queriesUsedInFormula) &&
    other.shiftBy == shiftBy &&
    other.aggregateAttribute == aggregateAttribute &&
    other.aggregateOperator == aggregateOperator &&
    other.dataSource == dataSource &&
    other.disabled == disabled &&
    other.expression == expression &&
    other.filters == filters &&
    _deepEquality.equals(other.functions, functions) &&
    _deepEquality.equals(other.groupBy, groupBy) &&
    _deepEquality.equals(other.having, having) &&
    other.legend == legend &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.orderBy, orderBy) &&
    other.pageSize == pageSize &&
    other.queryName == queryName &&
    other.reduceTo == reduceTo &&
    _deepEquality.equals(other.selectColumns, selectColumns) &&
    other.seriesAggregation == seriesAggregation &&
    other.spaceAggregation == spaceAggregation &&
    other.stepInterval == stepInterval &&
    other.temporality == temporality &&
    other.timeAggregation == timeAggregation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isAnomaly == null ? 0 : isAnomaly!.hashCode) +
    (queriesUsedInFormula.hashCode) +
    (shiftBy == null ? 0 : shiftBy!.hashCode) +
    (aggregateAttribute == null ? 0 : aggregateAttribute!.hashCode) +
    (aggregateOperator == null ? 0 : aggregateOperator!.hashCode) +
    (dataSource == null ? 0 : dataSource!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (expression == null ? 0 : expression!.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (functions.hashCode) +
    (groupBy.hashCode) +
    (having.hashCode) +
    (legend == null ? 0 : legend!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (orderBy.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (queryName == null ? 0 : queryName!.hashCode) +
    (reduceTo == null ? 0 : reduceTo!.hashCode) +
    (selectColumns.hashCode) +
    (seriesAggregation == null ? 0 : seriesAggregation!.hashCode) +
    (spaceAggregation == null ? 0 : spaceAggregation!.hashCode) +
    (stepInterval == null ? 0 : stepInterval!.hashCode) +
    (temporality == null ? 0 : temporality!.hashCode) +
    (timeAggregation == null ? 0 : timeAggregation!.hashCode);

  @override
  String toString() => 'O11yBuilderQuery[isAnomaly=$isAnomaly, queriesUsedInFormula=$queriesUsedInFormula, shiftBy=$shiftBy, aggregateAttribute=$aggregateAttribute, aggregateOperator=$aggregateOperator, dataSource=$dataSource, disabled=$disabled, expression=$expression, filters=$filters, functions=$functions, groupBy=$groupBy, having=$having, legend=$legend, limit=$limit, offset=$offset, orderBy=$orderBy, pageSize=$pageSize, queryName=$queryName, reduceTo=$reduceTo, selectColumns=$selectColumns, seriesAggregation=$seriesAggregation, spaceAggregation=$spaceAggregation, stepInterval=$stepInterval, temporality=$temporality, timeAggregation=$timeAggregation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isAnomaly != null) {
      json[r'IsAnomaly'] = this.isAnomaly;
    } else {
      json[r'IsAnomaly'] = null;
    }
      json[r'QueriesUsedInFormula'] = this.queriesUsedInFormula;
    if (this.shiftBy != null) {
      json[r'ShiftBy'] = this.shiftBy;
    } else {
      json[r'ShiftBy'] = null;
    }
    if (this.aggregateAttribute != null) {
      json[r'aggregateAttribute'] = this.aggregateAttribute;
    } else {
      json[r'aggregateAttribute'] = null;
    }
    if (this.aggregateOperator != null) {
      json[r'aggregateOperator'] = this.aggregateOperator;
    } else {
      json[r'aggregateOperator'] = null;
    }
    if (this.dataSource != null) {
      json[r'dataSource'] = this.dataSource;
    } else {
      json[r'dataSource'] = null;
    }
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.expression != null) {
      json[r'expression'] = this.expression;
    } else {
      json[r'expression'] = null;
    }
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
      json[r'functions'] = this.functions;
      json[r'groupBy'] = this.groupBy;
      json[r'having'] = this.having;
    if (this.legend != null) {
      json[r'legend'] = this.legend;
    } else {
      json[r'legend'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'orderBy'] = this.orderBy;
    if (this.pageSize != null) {
      json[r'pageSize'] = this.pageSize;
    } else {
      json[r'pageSize'] = null;
    }
    if (this.queryName != null) {
      json[r'queryName'] = this.queryName;
    } else {
      json[r'queryName'] = null;
    }
    if (this.reduceTo != null) {
      json[r'reduceTo'] = this.reduceTo;
    } else {
      json[r'reduceTo'] = null;
    }
      json[r'selectColumns'] = this.selectColumns;
    if (this.seriesAggregation != null) {
      json[r'seriesAggregation'] = this.seriesAggregation;
    } else {
      json[r'seriesAggregation'] = null;
    }
    if (this.spaceAggregation != null) {
      json[r'spaceAggregation'] = this.spaceAggregation;
    } else {
      json[r'spaceAggregation'] = null;
    }
    if (this.stepInterval != null) {
      json[r'stepInterval'] = this.stepInterval;
    } else {
      json[r'stepInterval'] = null;
    }
    if (this.temporality != null) {
      json[r'temporality'] = this.temporality;
    } else {
      json[r'temporality'] = null;
    }
    if (this.timeAggregation != null) {
      json[r'timeAggregation'] = this.timeAggregation;
    } else {
      json[r'timeAggregation'] = null;
    }
    return json;
  }

  /// Returns a new [O11yBuilderQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yBuilderQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yBuilderQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yBuilderQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yBuilderQuery(
        isAnomaly: mapValueOfType<bool>(json, r'IsAnomaly'),
        queriesUsedInFormula: json[r'QueriesUsedInFormula'] is Iterable
            ? (json[r'QueriesUsedInFormula'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        shiftBy: mapValueOfType<int>(json, r'ShiftBy'),
        aggregateAttribute: O11yAttributeKey.fromJson(json[r'aggregateAttribute']),
        aggregateOperator: mapValueOfType<String>(json, r'aggregateOperator'),
        dataSource: mapValueOfType<String>(json, r'dataSource'),
        disabled: mapValueOfType<bool>(json, r'disabled'),
        expression: mapValueOfType<String>(json, r'expression'),
        filters: O11yFilterSet.fromJson(json[r'filters']),
        functions: O11yFunction.listFromJson(json[r'functions']),
        groupBy: O11yAttributeKey.listFromJson(json[r'groupBy']),
        having: O11yHaving.listFromJson(json[r'having']),
        legend: mapValueOfType<String>(json, r'legend'),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        orderBy: O11yOrderBy.listFromJson(json[r'orderBy']),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        queryName: mapValueOfType<String>(json, r'queryName'),
        reduceTo: mapValueOfType<String>(json, r'reduceTo'),
        selectColumns: O11yAttributeKey.listFromJson(json[r'selectColumns']),
        seriesAggregation: mapValueOfType<String>(json, r'seriesAggregation'),
        spaceAggregation: mapValueOfType<String>(json, r'spaceAggregation'),
        stepInterval: mapValueOfType<int>(json, r'stepInterval'),
        temporality: mapValueOfType<String>(json, r'temporality'),
        timeAggregation: mapValueOfType<String>(json, r'timeAggregation'),
      );
    }
    return null;
  }

  static List<O11yBuilderQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yBuilderQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yBuilderQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yBuilderQuery> mapFromJson(dynamic json) {
    final map = <String, O11yBuilderQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yBuilderQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yBuilderQuery-objects as value to a dart map
  static Map<String, List<O11yBuilderQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yBuilderQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yBuilderQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

