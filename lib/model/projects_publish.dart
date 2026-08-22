//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsPublish {
  /// Returns a new [ProjectsPublish] instance.
  ProjectsPublish({
    this.slug,
    this.source_,
  });
  /// Slug is the site to publish, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Source is the build output to promote, as a path RELATIVE to your org's own storage space — never a URL and never a bucket. The org segment is prepended server-side from the validated principal, so the worst a hostile source can address is something your own org already owns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsPublish &&
    other.slug == slug &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'ProjectsPublish[slug=$slug, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsPublish] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsPublish? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsPublish[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsPublish[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsPublish(
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<ProjectsPublish> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsPublish>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsPublish.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsPublish> mapFromJson(dynamic json) {
    final map = <String, ProjectsPublish>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsPublish.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsPublish-objects as value to a dart map
  static Map<String, List<ProjectsPublish>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsPublish>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsPublish.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

