//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PatchApplicationIn {
  /// Returns a new [PatchApplicationIn] instance.
  PatchApplicationIn({
    this.id,
    this.note,
    this.reason,
    this.stage,
  });
  /// ID is the application to move, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Note is a free-text comment recorded on the timeline, with or without a stage change.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Reason records WHY, and is required to reject.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Stage is the stage to move to: applied, screened, qualified, credits-offered, onboarded or rejected. Omit to leave the stage alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchApplicationIn &&
    other.id == id &&
    other.note == note &&
    other.reason == reason &&
    other.stage == stage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (stage == null ? 0 : stage!.hashCode);

  @override
  String toString() => 'PatchApplicationIn[id=$id, note=$note, reason=$reason, stage=$stage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    return json;
  }

  /// Returns a new [PatchApplicationIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchApplicationIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchApplicationIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchApplicationIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchApplicationIn(
        id: mapValueOfType<String>(json, r'id'),
        note: mapValueOfType<String>(json, r'note'),
        reason: mapValueOfType<String>(json, r'reason'),
        stage: mapValueOfType<String>(json, r'stage'),
      );
    }
    return null;
  }

  static List<PatchApplicationIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchApplicationIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchApplicationIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchApplicationIn> mapFromJson(dynamic json) {
    final map = <String, PatchApplicationIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchApplicationIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchApplicationIn-objects as value to a dart map
  static Map<String, List<PatchApplicationIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchApplicationIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchApplicationIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

