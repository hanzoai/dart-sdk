//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LogLines {
  /// Returns a new [LogLines] instance.
  LogLines({
    this.logs,
  });

  /// Logs is that run's error text when it failed, else its output. It is empty when the function has never run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogLines &&
    other.logs == logs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logs == null ? 0 : logs!.hashCode);

  @override
  String toString() => 'LogLines[logs=$logs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    return json;
  }

  /// Returns a new [LogLines] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogLines? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogLines[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogLines[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogLines(
        logs: mapValueOfType<String>(json, r'logs'),
      );
    }
    return null;
  }

  static List<LogLines> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogLines>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogLines.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogLines> mapFromJson(dynamic json) {
    final map = <String, LogLines>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogLines.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogLines-objects as value to a dart map
  static Map<String, List<LogLines>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogLines>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogLines.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

