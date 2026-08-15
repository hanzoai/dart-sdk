//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScanView {
  /// Returns a new [ScanView] instance.
  ScanView({
    this.createdAt,
    this.critical,
    this.files,
    this.findings,
    this.high,
    this.id,
    this.low,
    this.medium,
    this.project,
  });

  /// CreatedAt is when the scan ran, in Unix milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Critical is how many findings carry the highest severity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? critical;

  /// Files is how many files the scan read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? files;

  /// Findings is how many secrets fired across them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? findings;

  /// High is how many findings rank high.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? high;

  /// ID addresses this scan and every finding on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Low is how many findings rank low.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? low;

  /// Medium is how many findings rank medium.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? medium;

  /// Project is the sub-scope the scan was filed under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanView &&
    other.createdAt == createdAt &&
    other.critical == critical &&
    other.files == files &&
    other.findings == findings &&
    other.high == high &&
    other.id == id &&
    other.low == low &&
    other.medium == medium &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (critical == null ? 0 : critical!.hashCode) +
    (files == null ? 0 : files!.hashCode) +
    (findings == null ? 0 : findings!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (low == null ? 0 : low!.hashCode) +
    (medium == null ? 0 : medium!.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'ScanView[createdAt=$createdAt, critical=$critical, files=$files, findings=$findings, high=$high, id=$id, low=$low, medium=$medium, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.critical != null) {
      json[r'critical'] = this.critical;
    } else {
      json[r'critical'] = null;
    }
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    if (this.findings != null) {
      json[r'findings'] = this.findings;
    } else {
      json[r'findings'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.low != null) {
      json[r'low'] = this.low;
    } else {
      json[r'low'] = null;
    }
    if (this.medium != null) {
      json[r'medium'] = this.medium;
    } else {
      json[r'medium'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [ScanView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        critical: mapValueOfType<int>(json, r'critical'),
        files: mapValueOfType<int>(json, r'files'),
        findings: mapValueOfType<int>(json, r'findings'),
        high: mapValueOfType<int>(json, r'high'),
        id: mapValueOfType<String>(json, r'id'),
        low: mapValueOfType<int>(json, r'low'),
        medium: mapValueOfType<int>(json, r'medium'),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<ScanView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanView> mapFromJson(dynamic json) {
    final map = <String, ScanView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanView-objects as value to a dart map
  static Map<String, List<ScanView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

