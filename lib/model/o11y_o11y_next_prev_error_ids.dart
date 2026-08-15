//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yNextPrevErrorIDs {
  /// Returns a new [O11yO11yNextPrevErrorIDs] instance.
  O11yO11yNextPrevErrorIDs({
    this.groupID,
    this.nextErrorID,
    this.nextTimestamp,
    this.prevErrorID,
    this.prevTimestamp,
  });

  /// GroupID is the group both belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupID;

  /// NextErrorID is the id of the instance immediately after this one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextErrorID;

  /// NextTimestamp is that instance's time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? nextTimestamp;

  /// PrevErrorID is the id of the instance immediately before this one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prevErrorID;

  /// PrevTimestamp is that instance's time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? prevTimestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yNextPrevErrorIDs &&
    other.groupID == groupID &&
    other.nextErrorID == nextErrorID &&
    other.nextTimestamp == nextTimestamp &&
    other.prevErrorID == prevErrorID &&
    other.prevTimestamp == prevTimestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groupID == null ? 0 : groupID!.hashCode) +
    (nextErrorID == null ? 0 : nextErrorID!.hashCode) +
    (nextTimestamp == null ? 0 : nextTimestamp!.hashCode) +
    (prevErrorID == null ? 0 : prevErrorID!.hashCode) +
    (prevTimestamp == null ? 0 : prevTimestamp!.hashCode);

  @override
  String toString() => 'O11yO11yNextPrevErrorIDs[groupID=$groupID, nextErrorID=$nextErrorID, nextTimestamp=$nextTimestamp, prevErrorID=$prevErrorID, prevTimestamp=$prevTimestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.groupID != null) {
      json[r'groupID'] = this.groupID;
    } else {
      json[r'groupID'] = null;
    }
    if (this.nextErrorID != null) {
      json[r'nextErrorID'] = this.nextErrorID;
    } else {
      json[r'nextErrorID'] = null;
    }
    if (this.nextTimestamp != null) {
      json[r'nextTimestamp'] = this.nextTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'nextTimestamp'] = null;
    }
    if (this.prevErrorID != null) {
      json[r'prevErrorID'] = this.prevErrorID;
    } else {
      json[r'prevErrorID'] = null;
    }
    if (this.prevTimestamp != null) {
      json[r'prevTimestamp'] = this.prevTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'prevTimestamp'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yNextPrevErrorIDs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yNextPrevErrorIDs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yNextPrevErrorIDs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yNextPrevErrorIDs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yNextPrevErrorIDs(
        groupID: mapValueOfType<String>(json, r'groupID'),
        nextErrorID: mapValueOfType<String>(json, r'nextErrorID'),
        nextTimestamp: mapDateTime(json, r'nextTimestamp', r''),
        prevErrorID: mapValueOfType<String>(json, r'prevErrorID'),
        prevTimestamp: mapDateTime(json, r'prevTimestamp', r''),
      );
    }
    return null;
  }

  static List<O11yO11yNextPrevErrorIDs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yNextPrevErrorIDs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yNextPrevErrorIDs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yNextPrevErrorIDs> mapFromJson(dynamic json) {
    final map = <String, O11yO11yNextPrevErrorIDs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yNextPrevErrorIDs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yNextPrevErrorIDs-objects as value to a dart map
  static Map<String, List<O11yO11yNextPrevErrorIDs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yNextPrevErrorIDs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yNextPrevErrorIDs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

