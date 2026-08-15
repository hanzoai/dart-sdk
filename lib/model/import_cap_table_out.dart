//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ImportCapTableOut {
  /// Returns a new [ImportCapTableOut] instance.
  ImportCapTableOut({
    this.formation,
    this.rows,
    this.stakeholdersImported,
  });

  /// Formation is the org's incorporation record, now marked cap-table-imported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Formation? formation;

  /// Rows is how many rows were read from the sheet, header included.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  /// StakeholdersImported is how many stakeholders the cap table accepted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stakeholdersImported;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportCapTableOut &&
    other.formation == formation &&
    other.rows == rows &&
    other.stakeholdersImported == stakeholdersImported;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formation == null ? 0 : formation!.hashCode) +
    (rows == null ? 0 : rows!.hashCode) +
    (stakeholdersImported == null ? 0 : stakeholdersImported!.hashCode);

  @override
  String toString() => 'ImportCapTableOut[formation=$formation, rows=$rows, stakeholdersImported=$stakeholdersImported]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formation != null) {
      json[r'formation'] = this.formation;
    } else {
      json[r'formation'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    if (this.stakeholdersImported != null) {
      json[r'stakeholdersImported'] = this.stakeholdersImported;
    } else {
      json[r'stakeholdersImported'] = null;
    }
    return json;
  }

  /// Returns a new [ImportCapTableOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportCapTableOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportCapTableOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportCapTableOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportCapTableOut(
        formation: Formation.fromJson(json[r'formation']),
        rows: mapValueOfType<int>(json, r'rows'),
        stakeholdersImported: mapValueOfType<int>(json, r'stakeholdersImported'),
      );
    }
    return null;
  }

  static List<ImportCapTableOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportCapTableOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportCapTableOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportCapTableOut> mapFromJson(dynamic json) {
    final map = <String, ImportCapTableOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportCapTableOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportCapTableOut-objects as value to a dart map
  static Map<String, List<ImportCapTableOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportCapTableOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportCapTableOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

