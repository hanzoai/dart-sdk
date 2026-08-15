//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySpanPercentileIn {
  /// Returns a new [O11yO11ySpanPercentileIn] instance.
  O11yO11ySpanPercentileIn({
    this.end,
    required this.name,
    this.resourceAttributes = const {},
    required this.serviceName,
    this.spanDuration,
    this.start,
  });

  /// End is the window end, as epoch nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  /// Name is the span name whose peers are compared. Required.
  String name;

  /// ResourceAttributes narrow the peer group to spans carrying them all.
  Map<String, String> resourceAttributes;

  /// ServiceName is the service the span belongs to. Required.
  String serviceName;

  /// SpanDuration is the span's duration in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spanDuration;

  /// Start is the window start, as epoch nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySpanPercentileIn &&
    other.end == end &&
    other.name == name &&
    _deepEquality.equals(other.resourceAttributes, resourceAttributes) &&
    other.serviceName == serviceName &&
    other.spanDuration == spanDuration &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (name.hashCode) +
    (resourceAttributes.hashCode) +
    (serviceName.hashCode) +
    (spanDuration == null ? 0 : spanDuration!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'O11yO11ySpanPercentileIn[end=$end, name=$name, resourceAttributes=$resourceAttributes, serviceName=$serviceName, spanDuration=$spanDuration, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
      json[r'name'] = this.name;
      json[r'resourceAttributes'] = this.resourceAttributes;
      json[r'serviceName'] = this.serviceName;
    if (this.spanDuration != null) {
      json[r'spanDuration'] = this.spanDuration;
    } else {
      json[r'spanDuration'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySpanPercentileIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySpanPercentileIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySpanPercentileIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySpanPercentileIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySpanPercentileIn(
        end: mapValueOfType<int>(json, r'end'),
        name: mapValueOfType<String>(json, r'name')!,
        resourceAttributes: mapCastOfType<String, String>(json, r'resourceAttributes') ?? const {},
        serviceName: mapValueOfType<String>(json, r'serviceName')!,
        spanDuration: mapValueOfType<int>(json, r'spanDuration'),
        start: mapValueOfType<int>(json, r'start'),
      );
    }
    return null;
  }

  static List<O11yO11ySpanPercentileIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySpanPercentileIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySpanPercentileIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySpanPercentileIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySpanPercentileIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySpanPercentileIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySpanPercentileIn-objects as value to a dart map
  static Map<String, List<O11yO11ySpanPercentileIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySpanPercentileIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySpanPercentileIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'serviceName',
  };
}

