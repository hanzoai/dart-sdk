//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yQueueIn {
  /// Returns a new [O11yO11yQueueIn] instance.
  O11yO11yQueueIn({
    this.end,
    this.evalTime,
    this.start,
    this.variables = const {},
  });

  /// End is the window's end, epoch nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  /// EvalTime bounds the span-evaluation scan, nanoseconds; only the span/evaluation view reads it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? evalTime;

  /// Start is the window's start, epoch nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  /// Variables name what the view drills into — topic, partition, service, consumer_group — keyed by the name the view expects.
  Map<String, String> variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yQueueIn &&
    other.end == end &&
    other.evalTime == evalTime &&
    other.start == start &&
    _deepEquality.equals(other.variables, variables);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (evalTime == null ? 0 : evalTime!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (variables.hashCode);

  @override
  String toString() => 'O11yO11yQueueIn[end=$end, evalTime=$evalTime, start=$start, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.evalTime != null) {
      json[r'eval_time'] = this.evalTime;
    } else {
      json[r'eval_time'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
      json[r'variables'] = this.variables;
    return json;
  }

  /// Returns a new [O11yO11yQueueIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yQueueIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yQueueIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yQueueIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yQueueIn(
        end: mapValueOfType<int>(json, r'end'),
        evalTime: mapValueOfType<int>(json, r'eval_time'),
        start: mapValueOfType<int>(json, r'start'),
        variables: mapCastOfType<String, String>(json, r'variables') ?? const {},
      );
    }
    return null;
  }

  static List<O11yO11yQueueIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yQueueIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yQueueIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yQueueIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yQueueIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yQueueIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yQueueIn-objects as value to a dart map
  static Map<String, List<O11yO11yQueueIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yQueueIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yQueueIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

