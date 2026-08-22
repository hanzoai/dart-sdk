//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LicensingRevocationEntry {
  /// Returns a new [LicensingRevocationEntry] instance.
  LicensingRevocationEntry({
    this.at,
    this.by,
    this.reason,
    this.scope,
    this.value,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? at;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? by;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensingRevocationEntry &&
    other.at == at &&
    other.by == by &&
    other.reason == reason &&
    other.scope == scope &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (by == null ? 0 : by!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'LicensingRevocationEntry[at=$at, by=$by, reason=$reason, scope=$scope, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.by != null) {
      json[r'by'] = this.by;
    } else {
      json[r'by'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [LicensingRevocationEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensingRevocationEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicensingRevocationEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicensingRevocationEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicensingRevocationEntry(
        at: mapValueOfType<int>(json, r'at'),
        by: mapValueOfType<String>(json, r'by'),
        reason: mapValueOfType<String>(json, r'reason'),
        scope: mapValueOfType<String>(json, r'scope'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<LicensingRevocationEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensingRevocationEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensingRevocationEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensingRevocationEntry> mapFromJson(dynamic json) {
    final map = <String, LicensingRevocationEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensingRevocationEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensingRevocationEntry-objects as value to a dart map
  static Map<String, List<LicensingRevocationEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensingRevocationEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensingRevocationEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

