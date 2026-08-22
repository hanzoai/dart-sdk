//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Blob {
  /// Returns a new [Blob] instance.
  Blob({
    this.data,
    this.dir,
    this.entries = const [],
    this.path,
  });
  /// Data is the file's bytes, verbatim, base64 on the wire. Empty for a directory and for an empty file alike; Dir is what tells those apart.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  /// Dir says which of the two answers this is: true and the path is a directory, so read Entries; false and it is a file, so read Data. Nothing else distinguishes them — an empty file and an empty directory look alike here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dir;

  /// Entries is a directory's contents as bare NAMES, not paths — one level, no recursion, dotfiles included, \".\" and \"..\" excluded (`ls -1A`). Empty for a file, and for an empty directory.
  List<String> entries;

  /// Path is the RESOLVED absolute path that was read — the caller's relative path joined onto the sandbox's working directory (Leased.Workdir), so it names the same file for a reader who does not know the class.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Blob &&
    other.data == data &&
    other.dir == dir &&
    _deepEquality.equals(other.entries, entries) &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (dir == null ? 0 : dir!.hashCode) +
    (entries.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'Blob[data=$data, dir=$dir, entries=$entries, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.dir != null) {
      json[r'dir'] = this.dir;
    } else {
      json[r'dir'] = null;
    }
      json[r'entries'] = this.entries;
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    return json;
  }

  /// Returns a new [Blob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Blob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Blob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blob(
        data: mapValueOfType<String>(json, r'data'),
        dir: mapValueOfType<bool>(json, r'dir'),
        entries: json[r'entries'] is Iterable
            ? (json[r'entries'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<Blob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Blob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blob> mapFromJson(dynamic json) {
    final map = <String, Blob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blob-objects as value to a dart map
  static Map<String, List<Blob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Blob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Blob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

