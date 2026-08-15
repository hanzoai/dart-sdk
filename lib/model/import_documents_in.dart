//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ImportDocumentsIn {
  /// Returns a new [ImportDocumentsIn] instance.
  ImportDocumentsIn({
    this.folderId,
  });

  /// FolderID is a Google Drive folder id. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportDocumentsIn &&
    other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'ImportDocumentsIn[folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    return json;
  }

  /// Returns a new [ImportDocumentsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportDocumentsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportDocumentsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportDocumentsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportDocumentsIn(
        folderId: mapValueOfType<String>(json, r'folderId'),
      );
    }
    return null;
  }

  static List<ImportDocumentsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportDocumentsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportDocumentsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportDocumentsIn> mapFromJson(dynamic json) {
    final map = <String, ImportDocumentsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportDocumentsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportDocumentsIn-objects as value to a dart map
  static Map<String, List<ImportDocumentsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportDocumentsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportDocumentsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

