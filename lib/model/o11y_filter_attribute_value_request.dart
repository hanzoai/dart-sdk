//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yFilterAttributeValueRequest {
  /// Returns a new [O11yFilterAttributeValueRequest] instance.
  O11yFilterAttributeValueRequest({
    this.aggregateAttribute,
    this.aggregateOperator,
    this.dataSource,
    this.endTimeMillis,
    this.existingFilterItems = const [],
    this.filterAttributeKey,
    this.filterAttributeKeyDataType,
    this.includeRelated,
    this.limit,
    this.metricNames = const [],
    this.searchText,
    this.startTimeMillis,
    this.tagType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aggregateAttribute;

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
  int? endTimeMillis;

  List<O11yFilterItem> existingFilterItems;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterAttributeKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterAttributeKeyDataType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeRelated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  List<String> metricNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yFilterAttributeValueRequest &&
    other.aggregateAttribute == aggregateAttribute &&
    other.aggregateOperator == aggregateOperator &&
    other.dataSource == dataSource &&
    other.endTimeMillis == endTimeMillis &&
    _deepEquality.equals(other.existingFilterItems, existingFilterItems) &&
    other.filterAttributeKey == filterAttributeKey &&
    other.filterAttributeKeyDataType == filterAttributeKeyDataType &&
    other.includeRelated == includeRelated &&
    other.limit == limit &&
    _deepEquality.equals(other.metricNames, metricNames) &&
    other.searchText == searchText &&
    other.startTimeMillis == startTimeMillis &&
    other.tagType == tagType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aggregateAttribute == null ? 0 : aggregateAttribute!.hashCode) +
    (aggregateOperator == null ? 0 : aggregateOperator!.hashCode) +
    (dataSource == null ? 0 : dataSource!.hashCode) +
    (endTimeMillis == null ? 0 : endTimeMillis!.hashCode) +
    (existingFilterItems.hashCode) +
    (filterAttributeKey == null ? 0 : filterAttributeKey!.hashCode) +
    (filterAttributeKeyDataType == null ? 0 : filterAttributeKeyDataType!.hashCode) +
    (includeRelated == null ? 0 : includeRelated!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (metricNames.hashCode) +
    (searchText == null ? 0 : searchText!.hashCode) +
    (startTimeMillis == null ? 0 : startTimeMillis!.hashCode) +
    (tagType == null ? 0 : tagType!.hashCode);

  @override
  String toString() => 'O11yFilterAttributeValueRequest[aggregateAttribute=$aggregateAttribute, aggregateOperator=$aggregateOperator, dataSource=$dataSource, endTimeMillis=$endTimeMillis, existingFilterItems=$existingFilterItems, filterAttributeKey=$filterAttributeKey, filterAttributeKeyDataType=$filterAttributeKeyDataType, includeRelated=$includeRelated, limit=$limit, metricNames=$metricNames, searchText=$searchText, startTimeMillis=$startTimeMillis, tagType=$tagType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.endTimeMillis != null) {
      json[r'endTimeMillis'] = this.endTimeMillis;
    } else {
      json[r'endTimeMillis'] = null;
    }
      json[r'existingFilterItems'] = this.existingFilterItems;
    if (this.filterAttributeKey != null) {
      json[r'filterAttributeKey'] = this.filterAttributeKey;
    } else {
      json[r'filterAttributeKey'] = null;
    }
    if (this.filterAttributeKeyDataType != null) {
      json[r'filterAttributeKeyDataType'] = this.filterAttributeKeyDataType;
    } else {
      json[r'filterAttributeKeyDataType'] = null;
    }
    if (this.includeRelated != null) {
      json[r'includeRelated'] = this.includeRelated;
    } else {
      json[r'includeRelated'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
      json[r'metricNames'] = this.metricNames;
    if (this.searchText != null) {
      json[r'searchText'] = this.searchText;
    } else {
      json[r'searchText'] = null;
    }
    if (this.startTimeMillis != null) {
      json[r'startTimeMillis'] = this.startTimeMillis;
    } else {
      json[r'startTimeMillis'] = null;
    }
    if (this.tagType != null) {
      json[r'tagType'] = this.tagType;
    } else {
      json[r'tagType'] = null;
    }
    return json;
  }

  /// Returns a new [O11yFilterAttributeValueRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yFilterAttributeValueRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yFilterAttributeValueRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yFilterAttributeValueRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yFilterAttributeValueRequest(
        aggregateAttribute: mapValueOfType<String>(json, r'aggregateAttribute'),
        aggregateOperator: mapValueOfType<String>(json, r'aggregateOperator'),
        dataSource: mapValueOfType<String>(json, r'dataSource'),
        endTimeMillis: mapValueOfType<int>(json, r'endTimeMillis'),
        existingFilterItems: O11yFilterItem.listFromJson(json[r'existingFilterItems']),
        filterAttributeKey: mapValueOfType<String>(json, r'filterAttributeKey'),
        filterAttributeKeyDataType: mapValueOfType<String>(json, r'filterAttributeKeyDataType'),
        includeRelated: mapValueOfType<bool>(json, r'includeRelated'),
        limit: mapValueOfType<int>(json, r'limit'),
        metricNames: json[r'metricNames'] is Iterable
            ? (json[r'metricNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        searchText: mapValueOfType<String>(json, r'searchText'),
        startTimeMillis: mapValueOfType<int>(json, r'startTimeMillis'),
        tagType: mapValueOfType<String>(json, r'tagType'),
      );
    }
    return null;
  }

  static List<O11yFilterAttributeValueRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yFilterAttributeValueRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yFilterAttributeValueRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yFilterAttributeValueRequest> mapFromJson(dynamic json) {
    final map = <String, O11yFilterAttributeValueRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yFilterAttributeValueRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yFilterAttributeValueRequest-objects as value to a dart map
  static Map<String, List<O11yFilterAttributeValueRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yFilterAttributeValueRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yFilterAttributeValueRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

