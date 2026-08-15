//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yListError {
  /// Returns a new [O11yO11yListError] instance.
  O11yO11yListError({
    this.exceptionCount,
    this.exceptionMessage,
    this.exceptionType,
    this.firstSeen,
    this.groupID,
    this.lastSeen,
    this.serviceName,
  });

  /// ExceptionCount is how many instances the group holds in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exceptionCount;

  /// ExceptionMsg is its message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionMessage;

  /// ExceptionType is the exception's type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionType;

  /// FirstSeen is when the earliest was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? firstSeen;

  /// GroupID is the group's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupID;

  /// LastSeen is when the latest instance was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastSeen;

  /// ServiceName is the service that reported them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yListError &&
    other.exceptionCount == exceptionCount &&
    other.exceptionMessage == exceptionMessage &&
    other.exceptionType == exceptionType &&
    other.firstSeen == firstSeen &&
    other.groupID == groupID &&
    other.lastSeen == lastSeen &&
    other.serviceName == serviceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exceptionCount == null ? 0 : exceptionCount!.hashCode) +
    (exceptionMessage == null ? 0 : exceptionMessage!.hashCode) +
    (exceptionType == null ? 0 : exceptionType!.hashCode) +
    (firstSeen == null ? 0 : firstSeen!.hashCode) +
    (groupID == null ? 0 : groupID!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (serviceName == null ? 0 : serviceName!.hashCode);

  @override
  String toString() => 'O11yO11yListError[exceptionCount=$exceptionCount, exceptionMessage=$exceptionMessage, exceptionType=$exceptionType, firstSeen=$firstSeen, groupID=$groupID, lastSeen=$lastSeen, serviceName=$serviceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exceptionCount != null) {
      json[r'exceptionCount'] = this.exceptionCount;
    } else {
      json[r'exceptionCount'] = null;
    }
    if (this.exceptionMessage != null) {
      json[r'exceptionMessage'] = this.exceptionMessage;
    } else {
      json[r'exceptionMessage'] = null;
    }
    if (this.exceptionType != null) {
      json[r'exceptionType'] = this.exceptionType;
    } else {
      json[r'exceptionType'] = null;
    }
    if (this.firstSeen != null) {
      json[r'firstSeen'] = this.firstSeen!.toUtc().toIso8601String();
    } else {
      json[r'firstSeen'] = null;
    }
    if (this.groupID != null) {
      json[r'groupID'] = this.groupID;
    } else {
      json[r'groupID'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen!.toUtc().toIso8601String();
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.serviceName != null) {
      json[r'serviceName'] = this.serviceName;
    } else {
      json[r'serviceName'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yListError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yListError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yListError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yListError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yListError(
        exceptionCount: mapValueOfType<int>(json, r'exceptionCount'),
        exceptionMessage: mapValueOfType<String>(json, r'exceptionMessage'),
        exceptionType: mapValueOfType<String>(json, r'exceptionType'),
        firstSeen: mapDateTime(json, r'firstSeen', r''),
        groupID: mapValueOfType<String>(json, r'groupID'),
        lastSeen: mapDateTime(json, r'lastSeen', r''),
        serviceName: mapValueOfType<String>(json, r'serviceName'),
      );
    }
    return null;
  }

  static List<O11yO11yListError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yListError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yListError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yListError> mapFromJson(dynamic json) {
    final map = <String, O11yO11yListError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yListError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yListError-objects as value to a dart map
  static Map<String, List<O11yO11yListError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yListError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yListError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

