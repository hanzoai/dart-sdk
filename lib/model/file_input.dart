//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FileInput {
  /// Returns a new [FileInput] instance.
  FileInput({
    this.content,
    this.path,
  });
  /// Content is the file's full text. Max 1 MiB per file; binary files should simply be omitted rather than sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Path is the file's repo-relative path, e.g. \"internal/store/db.go\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileInput &&
    other.content == content &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'FileInput[content=$content, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    return json;
  }

  /// Returns a new [FileInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileInput(
        content: mapValueOfType<String>(json, r'content'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<FileInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileInput> mapFromJson(dynamic json) {
    final map = <String, FileInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileInput-objects as value to a dart map
  static Map<String, List<FileInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

