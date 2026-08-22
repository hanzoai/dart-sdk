//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsBuildSite {
  /// Returns a new [ProjectsBuildSite] instance.
  ProjectsBuildSite({
    this.brief,
    this.model,
    this.name,
    this.slug,
  });
  /// Brief is what the site should be, in plain language. It is the whole input the model gets and it is size-bounded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brief;

  /// Model names which model writes the site. Absent takes the deployment's default — this route spends inference on the caller's org either way.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Name is the site's display name. Taken from what the model writes when omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Slug is the handle and public host label to publish under. Derived from the name, or from the brief, when omitted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsBuildSite &&
    other.brief == brief &&
    other.model == model &&
    other.name == name &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brief == null ? 0 : brief!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'ProjectsBuildSite[brief=$brief, model=$model, name=$name, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.brief != null) {
      json[r'brief'] = this.brief;
    } else {
      json[r'brief'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsBuildSite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsBuildSite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsBuildSite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsBuildSite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsBuildSite(
        brief: mapValueOfType<String>(json, r'brief'),
        model: mapValueOfType<String>(json, r'model'),
        name: mapValueOfType<String>(json, r'name'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<ProjectsBuildSite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsBuildSite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsBuildSite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsBuildSite> mapFromJson(dynamic json) {
    final map = <String, ProjectsBuildSite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsBuildSite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsBuildSite-objects as value to a dart map
  static Map<String, List<ProjectsBuildSite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsBuildSite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsBuildSite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

