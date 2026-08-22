//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yOperationsIn {
  /// Returns a new [O11yO11yOperationsIn] instance.
  O11yO11yOperationsIn({
    this.end,
    this.limit,
    this.service,
    this.start,
    this.tags = const [],
  });
  /// End is the window's end, epoch nanoseconds as a string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Limit caps how many operations come back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Service is the service whose operations are read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Start is the window's start, epoch nanoseconds as a string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Tags narrow the spans counted, each a span-attribute predicate.
  List<O11yO11yServiceTag> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yOperationsIn &&
    other.end == end &&
    other.limit == limit &&
    other.service == service &&
    other.start == start &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'O11yO11yOperationsIn[end=$end, limit=$limit, service=$service, start=$start, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [O11yO11yOperationsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yOperationsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yOperationsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yOperationsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yOperationsIn(
        end: mapValueOfType<String>(json, r'end'),
        limit: mapValueOfType<int>(json, r'limit'),
        service: mapValueOfType<String>(json, r'service'),
        start: mapValueOfType<String>(json, r'start'),
        tags: O11yO11yServiceTag.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<O11yO11yOperationsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yOperationsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yOperationsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yOperationsIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yOperationsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yOperationsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yOperationsIn-objects as value to a dart map
  static Map<String, List<O11yO11yOperationsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yOperationsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yOperationsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

