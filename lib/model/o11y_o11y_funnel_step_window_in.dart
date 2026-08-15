//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yFunnelStepWindowIn {
  /// Returns a new [O11yO11yFunnelStepWindowIn] instance.
  O11yO11yFunnelStepWindowIn({
    this.endTime,
    this.startTime,
    this.stepEnd,
    this.stepStart,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stepEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stepStart;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yFunnelStepWindowIn &&
    other.endTime == endTime &&
    other.startTime == startTime &&
    other.stepEnd == stepEnd &&
    other.stepStart == stepStart;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (endTime == null ? 0 : endTime!.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (stepEnd == null ? 0 : stepEnd!.hashCode) +
    (stepStart == null ? 0 : stepStart!.hashCode);

  @override
  String toString() => 'O11yO11yFunnelStepWindowIn[endTime=$endTime, startTime=$startTime, stepEnd=$stepEnd, stepStart=$stepStart]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.endTime != null) {
      json[r'end_time'] = this.endTime;
    } else {
      json[r'end_time'] = null;
    }
    if (this.startTime != null) {
      json[r'start_time'] = this.startTime;
    } else {
      json[r'start_time'] = null;
    }
    if (this.stepEnd != null) {
      json[r'step_end'] = this.stepEnd;
    } else {
      json[r'step_end'] = null;
    }
    if (this.stepStart != null) {
      json[r'step_start'] = this.stepStart;
    } else {
      json[r'step_start'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yFunnelStepWindowIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yFunnelStepWindowIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yFunnelStepWindowIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yFunnelStepWindowIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yFunnelStepWindowIn(
        endTime: mapValueOfType<int>(json, r'end_time'),
        startTime: mapValueOfType<int>(json, r'start_time'),
        stepEnd: mapValueOfType<int>(json, r'step_end'),
        stepStart: mapValueOfType<int>(json, r'step_start'),
      );
    }
    return null;
  }

  static List<O11yO11yFunnelStepWindowIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yFunnelStepWindowIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yFunnelStepWindowIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yFunnelStepWindowIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yFunnelStepWindowIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yFunnelStepWindowIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yFunnelStepWindowIn-objects as value to a dart map
  static Map<String, List<O11yO11yFunnelStepWindowIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yFunnelStepWindowIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yFunnelStepWindowIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

