//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FileList {
  /// Returns a new [FileList] instance.
  FileList({
    this.drive,
    this.files = const [],
    this.folder,
    this.space,
    this.total,
  });
  /// Drive is the drive that was listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? drive;

  /// Files are the entries at this level, names RELATIVE to Folder.
  List<FileItem> files;

  /// Folder is the sub-folder the listing was scoped to, cleaned. Empty for the drive's own root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? folder;

  /// Space is the space that was listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  /// Total is how many entries came back. The listing is BOUNDED, so a drive with more files than the cap answers the cap and this says so — it is not a count of what the drive holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileList &&
    other.drive == drive &&
    _deepEquality.equals(other.files, files) &&
    other.folder == folder &&
    other.space == space &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (drive == null ? 0 : drive!.hashCode) +
    (files.hashCode) +
    (folder == null ? 0 : folder!.hashCode) +
    (space == null ? 0 : space!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'FileList[drive=$drive, files=$files, folder=$folder, space=$space, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.drive != null) {
      json[r'drive'] = this.drive;
    } else {
      json[r'drive'] = null;
    }
      json[r'files'] = this.files;
    if (this.folder != null) {
      json[r'folder'] = this.folder;
    } else {
      json[r'folder'] = null;
    }
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [FileList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileList(
        drive: mapValueOfType<String>(json, r'drive'),
        files: FileItem.listFromJson(json[r'files']),
        folder: mapValueOfType<String>(json, r'folder'),
        space: mapValueOfType<String>(json, r'space'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<FileList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileList> mapFromJson(dynamic json) {
    final map = <String, FileList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileList-objects as value to a dart map
  static Map<String, List<FileList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

