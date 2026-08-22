//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LogBody {
  /// Returns a new [LogBody] instance.
  LogBody({
    this.body,
    this.number,
    this.severity,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogBody &&
    other.body == body &&
    other.number == number &&
    other.severity == severity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (severity == null ? 0 : severity!.hashCode);

  @override
  String toString() => 'LogBody[body=$body, number=$number, severity=$severity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    return json;
  }

  /// Returns a new [LogBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogBody(
        body: mapValueOfType<String>(json, r'body'),
        number: mapValueOfType<int>(json, r'number'),
        severity: mapValueOfType<String>(json, r'severity'),
      );
    }
    return null;
  }

  static List<LogBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogBody> mapFromJson(dynamic json) {
    final map = <String, LogBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogBody-objects as value to a dart map
  static Map<String, List<LogBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

