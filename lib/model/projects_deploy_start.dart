//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsDeployStart {
  /// Returns a new [ProjectsDeployStart] instance.
  ProjectsDeployStart({
    this.commit,
    this.slug,
  });
  /// Commit is the git sha this build was produced from, recorded on the deployment so a released site can be traced back to its source. Optional.  It is the ONLY field here, and deliberately: the predecessor also accepted `source` and `branch`. `source` was the Content-Type discriminator this split removed. `branch` was accepted and DISCARDED — there is no branch column on a deployment, and the lifecycle event derives the branch from the project's own linked one — so declaring it would publish a settable field that does nothing into the document, every generated SDK and the MCP input schema. A field that is read by nothing is not described as if it were.  `url:\"-\"` because zip binds the query string OVER a decoded body, so without it a `?commit=` the caller never sent would outrank the one it did.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// Slug is the site to deploy, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsDeployStart &&
    other.commit == commit &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commit == null ? 0 : commit!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'ProjectsDeployStart[commit=$commit, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsDeployStart] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsDeployStart? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsDeployStart[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsDeployStart[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsDeployStart(
        commit: mapValueOfType<String>(json, r'commit'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<ProjectsDeployStart> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsDeployStart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsDeployStart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsDeployStart> mapFromJson(dynamic json) {
    final map = <String, ProjectsDeployStart>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsDeployStart.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsDeployStart-objects as value to a dart map
  static Map<String, List<ProjectsDeployStart>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsDeployStart>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsDeployStart.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

