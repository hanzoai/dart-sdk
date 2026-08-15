//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTopLevelOpsIn {
  /// Returns a new [O11yO11yTopLevelOpsIn] instance.
  O11yO11yTopLevelOpsIn({
    this.end,
    this.service,
    this.start,
  });

  /// End is the window's end, epoch nanoseconds as a string; empty means unbounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Service narrows the map to one service when set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Start is the window's start, epoch nanoseconds as a string; empty means unbounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTopLevelOpsIn &&
    other.end == end &&
    other.service == service &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'O11yO11yTopLevelOpsIn[end=$end, service=$service, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
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
    return json;
  }

  /// Returns a new [O11yO11yTopLevelOpsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTopLevelOpsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTopLevelOpsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTopLevelOpsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTopLevelOpsIn(
        end: mapValueOfType<String>(json, r'end'),
        service: mapValueOfType<String>(json, r'service'),
        start: mapValueOfType<String>(json, r'start'),
      );
    }
    return null;
  }

  static List<O11yO11yTopLevelOpsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTopLevelOpsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTopLevelOpsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTopLevelOpsIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTopLevelOpsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTopLevelOpsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTopLevelOpsIn-objects as value to a dart map
  static Map<String, List<O11yO11yTopLevelOpsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTopLevelOpsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTopLevelOpsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

