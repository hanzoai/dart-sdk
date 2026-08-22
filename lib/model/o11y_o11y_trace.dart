//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yTrace {
  /// Returns a new [O11yO11yTrace] instance.
  O11yO11yTrace({
    this.count,
    this.firstSeen,
    this.lastSeen,
    this.message,
    this.traceId,
  });
  /// Count is how many captured errors carried it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// FirstSeen is when the earliest of them was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? firstSeen;

  /// LastSeen is when the latest was.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastSeen;

  /// Message is the latest error message seen on the trace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// TraceID is the trace id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? traceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yTrace &&
    other.count == count &&
    other.firstSeen == firstSeen &&
    other.lastSeen == lastSeen &&
    other.message == message &&
    other.traceId == traceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (firstSeen == null ? 0 : firstSeen!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (traceId == null ? 0 : traceId!.hashCode);

  @override
  String toString() => 'O11yO11yTrace[count=$count, firstSeen=$firstSeen, lastSeen=$lastSeen, message=$message, traceId=$traceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.firstSeen != null) {
      json[r'firstSeen'] = this.firstSeen!.toUtc().toIso8601String();
    } else {
      json[r'firstSeen'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen!.toUtc().toIso8601String();
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.traceId != null) {
      json[r'traceId'] = this.traceId;
    } else {
      json[r'traceId'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yTrace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yTrace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yTrace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yTrace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yTrace(
        count: mapValueOfType<int>(json, r'count'),
        firstSeen: mapDateTime(json, r'firstSeen', r''),
        lastSeen: mapDateTime(json, r'lastSeen', r''),
        message: mapValueOfType<String>(json, r'message'),
        traceId: mapValueOfType<String>(json, r'traceId'),
      );
    }
    return null;
  }

  static List<O11yO11yTrace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yTrace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yTrace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yTrace> mapFromJson(dynamic json) {
    final map = <String, O11yO11yTrace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yTrace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yTrace-objects as value to a dart map
  static Map<String, List<O11yO11yTrace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yTrace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yTrace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

