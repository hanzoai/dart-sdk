//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FileItem {
  /// Returns a new [FileItem] instance.
  FileItem({
    this.etag,
    this.isFolder,
    this.modifiedAt,
    this.name,
    this.size,
  });
  /// ETag is the store's entity tag for the bytes currently at this name, with the quotes the store wraps it in stripped. It is an opaque VERSION and not a checksum to verify against: a single-part upload's tag happens to be the MD5 of the content and a multipart upload's is not, and nothing here says which this was. Compare two reads of one file to learn whether it changed; absent for a folder, and for a file the store reports none for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// Folder is true for a folder entry, which is emergent from \"/\" in the names beneath it rather than a thing that was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFolder;

  /// ModifiedAt is when the file was last written, in unix seconds, and 0 for a folder.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? modifiedAt;

  /// Name is the entry's name RELATIVE to the folder that was listed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Size is the file's size in bytes, and 0 for a folder.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileItem &&
    other.etag == etag &&
    other.isFolder == isFolder &&
    other.modifiedAt == modifiedAt &&
    other.name == name &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (etag == null ? 0 : etag!.hashCode) +
    (isFolder == null ? 0 : isFolder!.hashCode) +
    (modifiedAt == null ? 0 : modifiedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'FileItem[etag=$etag, isFolder=$isFolder, modifiedAt=$modifiedAt, name=$name, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.etag != null) {
      json[r'etag'] = this.etag;
    } else {
      json[r'etag'] = null;
    }
    if (this.isFolder != null) {
      json[r'isFolder'] = this.isFolder;
    } else {
      json[r'isFolder'] = null;
    }
    if (this.modifiedAt != null) {
      json[r'modifiedAt'] = this.modifiedAt;
    } else {
      json[r'modifiedAt'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [FileItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileItem(
        etag: mapValueOfType<String>(json, r'etag'),
        isFolder: mapValueOfType<bool>(json, r'isFolder'),
        modifiedAt: mapValueOfType<int>(json, r'modifiedAt'),
        name: mapValueOfType<String>(json, r'name'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<FileItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileItem> mapFromJson(dynamic json) {
    final map = <String, FileItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileItem-objects as value to a dart map
  static Map<String, List<FileItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

