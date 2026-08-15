//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DriftFlag {
  /// Returns a new [DriftFlag] instance.
  DriftFlag({
    this.kind,
    this.message,
    this.severity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? severity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DriftFlag &&
    other.kind == kind &&
    other.message == message &&
    other.severity == severity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind == null ? 0 : kind!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (severity == null ? 0 : severity!.hashCode);

  @override
  String toString() => 'DriftFlag[kind=$kind, message=$message, severity=$severity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
    return json;
  }

  /// Returns a new [DriftFlag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DriftFlag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DriftFlag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DriftFlag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DriftFlag(
        kind: mapValueOfType<String>(json, r'kind'),
        message: mapValueOfType<String>(json, r'message'),
        severity: mapValueOfType<String>(json, r'severity'),
      );
    }
    return null;
  }

  static List<DriftFlag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DriftFlag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DriftFlag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DriftFlag> mapFromJson(dynamic json) {
    final map = <String, DriftFlag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DriftFlag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DriftFlag-objects as value to a dart map
  static Map<String, List<DriftFlag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DriftFlag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DriftFlag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

