//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ImportCapTableIn {
  /// Returns a new [ImportCapTableIn] instance.
  ImportCapTableIn({
    this.range,
    this.spreadsheetId,
  });
  /// Range is an optional A1 range within the sheet; empty reads the default range.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// SpreadsheetID is a Google Sheets id. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spreadsheetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportCapTableIn &&
    other.range == range &&
    other.spreadsheetId == spreadsheetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (range == null ? 0 : range!.hashCode) +
    (spreadsheetId == null ? 0 : spreadsheetId!.hashCode);

  @override
  String toString() => 'ImportCapTableIn[range=$range, spreadsheetId=$spreadsheetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.spreadsheetId != null) {
      json[r'spreadsheetId'] = this.spreadsheetId;
    } else {
      json[r'spreadsheetId'] = null;
    }
    return json;
  }

  /// Returns a new [ImportCapTableIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportCapTableIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportCapTableIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportCapTableIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportCapTableIn(
        range: mapValueOfType<String>(json, r'range'),
        spreadsheetId: mapValueOfType<String>(json, r'spreadsheetId'),
      );
    }
    return null;
  }

  static List<ImportCapTableIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportCapTableIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportCapTableIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportCapTableIn> mapFromJson(dynamic json) {
    final map = <String, ImportCapTableIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportCapTableIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportCapTableIn-objects as value to a dart map
  static Map<String, List<ImportCapTableIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportCapTableIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportCapTableIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

