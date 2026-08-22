//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScheduleInput {
  /// Returns a new [ScheduleInput] instance.
  ScheduleInput({
    this.id,
    this.scheduledAt,
  });
  /// ID is the campaign id from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ScheduledAt is the unix send time. 0 clears the schedule.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduleInput &&
    other.id == id &&
    other.scheduledAt == scheduledAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (scheduledAt == null ? 0 : scheduledAt!.hashCode);

  @override
  String toString() => 'ScheduleInput[id=$id, scheduledAt=$scheduledAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.scheduledAt != null) {
      json[r'scheduledAt'] = this.scheduledAt;
    } else {
      json[r'scheduledAt'] = null;
    }
    return json;
  }

  /// Returns a new [ScheduleInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScheduleInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScheduleInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScheduleInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScheduleInput(
        id: mapValueOfType<String>(json, r'id'),
        scheduledAt: mapValueOfType<int>(json, r'scheduledAt'),
      );
    }
    return null;
  }

  static List<ScheduleInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduleInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScheduleInput> mapFromJson(dynamic json) {
    final map = <String, ScheduleInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScheduleInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScheduleInput-objects as value to a dart map
  static Map<String, List<ScheduleInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScheduleInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScheduleInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

