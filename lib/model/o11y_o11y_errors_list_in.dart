//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yErrorsListIn {
  /// Returns a new [O11yO11yErrorsListIn] instance.
  O11yO11yErrorsListIn({
    this.end,
    this.exceptionType,
    this.limit,
    this.offset,
    this.order,
    this.orderParam,
    this.serviceName,
    this.start,
    this.tags = const [],
  });

  /// End is the window end, as a nanosecond epoch spelled as a string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// ExceptionType narrows to one exception type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionType;

  /// Limit caps how many exception groups come back. Required, non-zero.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Offset is how many groups to skip.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Order is the direction: ascending or descending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? order;

  /// OrderParam is the column to order by, e.g. exceptionCount, lastSeen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderParam;

  /// ServiceName narrows to one reporting service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  /// Start is the window start, as a nanosecond epoch spelled as a string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Tags narrow the scan to spans carrying the given tag values.
  List<O11yO11yTagQuery> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yErrorsListIn &&
    other.end == end &&
    other.exceptionType == exceptionType &&
    other.limit == limit &&
    other.offset == offset &&
    other.order == order &&
    other.orderParam == orderParam &&
    other.serviceName == serviceName &&
    other.start == start &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (exceptionType == null ? 0 : exceptionType!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (orderParam == null ? 0 : orderParam!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'O11yO11yErrorsListIn[end=$end, exceptionType=$exceptionType, limit=$limit, offset=$offset, order=$order, orderParam=$orderParam, serviceName=$serviceName, start=$start, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.exceptionType != null) {
      json[r'exceptionType'] = this.exceptionType;
    } else {
      json[r'exceptionType'] = null;
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
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.orderParam != null) {
      json[r'orderParam'] = this.orderParam;
    } else {
      json[r'orderParam'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [O11yO11yErrorsListIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yErrorsListIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yErrorsListIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yErrorsListIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yErrorsListIn(
        end: mapValueOfType<String>(json, r'end'),
        exceptionType: mapValueOfType<String>(json, r'exceptionType'),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        order: mapValueOfType<String>(json, r'order'),
        orderParam: mapValueOfType<String>(json, r'orderParam'),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
        start: mapValueOfType<String>(json, r'start'),
        tags: O11yO11yTagQuery.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<O11yO11yErrorsListIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yErrorsListIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yErrorsListIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yErrorsListIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yErrorsListIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yErrorsListIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yErrorsListIn-objects as value to a dart map
  static Map<String, List<O11yO11yErrorsListIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yErrorsListIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yErrorsListIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

