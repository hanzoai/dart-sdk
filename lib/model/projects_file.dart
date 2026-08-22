//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsFile {
  /// Returns a new [ProjectsFile] instance.
  ProjectsFile({
    this.content,
    this.path,
  });
  /// Content is the file's whole text, inline. There is no upload step and no reference to fetch: a site is sent as its bytes, and each file and the site as a whole are size-bounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Path is where the file lands in the site, RELATIVE to its root — so \"index.html\" is the page served at /. Leading slashes and any attempt to escape the root are refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsFile &&
    other.content == content &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'ProjectsFile[content=$content, path=$path]';

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

  /// Returns a new [ProjectsFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsFile(
        content: mapValueOfType<String>(json, r'content'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<ProjectsFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsFile> mapFromJson(dynamic json) {
    final map = <String, ProjectsFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsFile-objects as value to a dart map
  static Map<String, List<ProjectsFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

