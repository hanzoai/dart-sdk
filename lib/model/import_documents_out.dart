//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ImportDocumentsOut {
  /// Returns a new [ImportDocumentsOut] instance.
  ImportDocumentsOut({
    this.formation,
    this.ingested,
  });
  /// Formation is the org's incorporation record with the imported document ids.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Formation? formation;

  /// Ingested is how many files this call put in the data room.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ingested;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportDocumentsOut &&
    other.formation == formation &&
    other.ingested == ingested;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formation == null ? 0 : formation!.hashCode) +
    (ingested == null ? 0 : ingested!.hashCode);

  @override
  String toString() => 'ImportDocumentsOut[formation=$formation, ingested=$ingested]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formation != null) {
      json[r'formation'] = this.formation;
    } else {
      json[r'formation'] = null;
    }
    if (this.ingested != null) {
      json[r'ingested'] = this.ingested;
    } else {
      json[r'ingested'] = null;
    }
    return json;
  }

  /// Returns a new [ImportDocumentsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportDocumentsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportDocumentsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportDocumentsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportDocumentsOut(
        formation: Formation.fromJson(json[r'formation']),
        ingested: mapValueOfType<int>(json, r'ingested'),
      );
    }
    return null;
  }

  static List<ImportDocumentsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportDocumentsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportDocumentsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportDocumentsOut> mapFromJson(dynamic json) {
    final map = <String, ImportDocumentsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportDocumentsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportDocumentsOut-objects as value to a dart map
  static Map<String, List<ImportDocumentsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportDocumentsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportDocumentsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

