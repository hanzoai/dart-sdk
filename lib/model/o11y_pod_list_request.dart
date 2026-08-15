//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPodListRequest {
  /// Returns a new [O11yPodListRequest] instance.
  O11yPodListRequest({
    this.end,
    this.filters,
    this.groupBy = const [],
    this.limit,
    this.offset,
    this.orderBy,
    this.start,
  });

  /// epoch time in ms
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yFilterSet? filters;

  List<O11yAttributeKey> groupBy;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yOrderBy? orderBy;

  /// epoch time in ms
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPodListRequest &&
    other.end == end &&
    other.filters == filters &&
    _deepEquality.equals(other.groupBy, groupBy) &&
    other.limit == limit &&
    other.offset == offset &&
    other.orderBy == orderBy &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (groupBy.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (orderBy == null ? 0 : orderBy!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'O11yPodListRequest[end=$end, filters=$filters, groupBy=$groupBy, limit=$limit, offset=$offset, orderBy=$orderBy, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
      json[r'groupBy'] = this.groupBy;
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
    if (this.orderBy != null) {
      json[r'orderBy'] = this.orderBy;
    } else {
      json[r'orderBy'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPodListRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPodListRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPodListRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPodListRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPodListRequest(
        end: mapValueOfType<int>(json, r'end'),
        filters: O11yFilterSet.fromJson(json[r'filters']),
        groupBy: O11yAttributeKey.listFromJson(json[r'groupBy']),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        orderBy: O11yOrderBy.fromJson(json[r'orderBy']),
        start: mapValueOfType<int>(json, r'start'),
      );
    }
    return null;
  }

  static List<O11yPodListRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPodListRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPodListRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPodListRequest> mapFromJson(dynamic json) {
    final map = <String, O11yPodListRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPodListRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPodListRequest-objects as value to a dart map
  static Map<String, List<O11yPodListRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPodListRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPodListRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

