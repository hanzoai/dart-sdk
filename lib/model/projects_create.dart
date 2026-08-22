//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsCreate {
  /// Returns a new [ProjectsCreate] instance.
  ProjectsCreate({
    this.analytics,
    this.description,
    this.framework,
    this.license,
    this.name,
    this.repo,
    this.slug,
    this.upstream,
    this.visibility,
  });
  /// Analytics is the opt-OUT for the wired-by-default analytics beacon: absent (nil) ⇒ ON (the default); explicit false ⇒ off. A pointer so \"unset\" is distinguishable from \"false\" — the only way to turn the default off.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? analytics;

  /// Description is the one-line summary, copied onto anything forked from this project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Framework is a BUILD HINT from a closed set, defaulting to static. It tells CI how to build a linked repo and never gates a deploy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// License is the terms that upstream work carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? license;

  /// Name is the project's display name and the only REQUIRED field. When slug is omitted it is also what the slug is derived from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectsCreateRepo? repo;

  /// Slug is the handle everything else addresses this project by: the public host `<slug>.hanzo.app`, the object-store key segment, and the path parameter of every later call. Derived from the name when omitted. It is a hostname label, so it is constrained and reserved labels such as `api` or `admin` are refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Upstream credits the third-party work this project was published from. It is accepted from any caller: giving away credit can only cost the publisher, so it needs no gate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? upstream;

  /// Visibility is \"public\" (the default when absent) or \"private\". Publishing publicly is ungated — that is the point of a community. Going PRIVATE is the paid feature, so an unfunded org asking for it is refused rather than silently downgraded (see resolve).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsCreate &&
    other.analytics == analytics &&
    other.description == description &&
    other.framework == framework &&
    other.license == license &&
    other.name == name &&
    other.repo == repo &&
    other.slug == slug &&
    other.upstream == upstream &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (analytics == null ? 0 : analytics!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (upstream == null ? 0 : upstream!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'ProjectsCreate[analytics=$analytics, description=$description, framework=$framework, license=$license, name=$name, repo=$repo, slug=$slug, upstream=$upstream, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.analytics != null) {
      json[r'analytics'] = this.analytics;
    } else {
      json[r'analytics'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.upstream != null) {
      json[r'upstream'] = this.upstream;
    } else {
      json[r'upstream'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsCreate(
        analytics: mapValueOfType<bool>(json, r'analytics'),
        description: mapValueOfType<String>(json, r'description'),
        framework: mapValueOfType<String>(json, r'framework'),
        license: mapValueOfType<String>(json, r'license'),
        name: mapValueOfType<String>(json, r'name'),
        repo: ProjectsCreateRepo.fromJson(json[r'repo']),
        slug: mapValueOfType<String>(json, r'slug'),
        upstream: mapValueOfType<String>(json, r'upstream'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<ProjectsCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsCreate> mapFromJson(dynamic json) {
    final map = <String, ProjectsCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsCreate-objects as value to a dart map
  static Map<String, List<ProjectsCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

