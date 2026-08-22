//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsRepo {
  /// Returns a new [ProjectsRepo] instance.
  ProjectsRepo({
    this.branch,
    this.provider,
    this.url,
  });
  /// Branch is the ref a push has to touch for this project to rebuild. Pushes to any other branch are ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Provider is the forge the URL was recognised as — it decides which webhook and which credential reach the repository, and is DERIVED from the URL rather than chosen by the caller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// URL is the clone address of the repository this project builds from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsRepo &&
    other.branch == branch &&
    other.provider == provider &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ProjectsRepo[branch=$branch, provider=$provider, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsRepo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsRepo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsRepo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsRepo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsRepo(
        branch: mapValueOfType<String>(json, r'branch'),
        provider: mapValueOfType<String>(json, r'provider'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ProjectsRepo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsRepo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsRepo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsRepo> mapFromJson(dynamic json) {
    final map = <String, ProjectsRepo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsRepo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsRepo-objects as value to a dart map
  static Map<String, List<ProjectsRepo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsRepo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsRepo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

