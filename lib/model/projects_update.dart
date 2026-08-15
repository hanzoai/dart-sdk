//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsUpdate {
  /// Returns a new [ProjectsUpdate] instance.
  ProjectsUpdate({
    this.cacheControl,
    this.description,
    this.framework,
    this.hidden,
    this.hiddenReason,
    this.license,
    this.name,
    this.repo,
    this.slug,
    this.tags = const {},
    this.upstream,
    this.visibility,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cacheControl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// Hidden is MODERATION, and the only admin-gated field on this body: it pulls a public project out of the catalogue from admin.hanzo.ai without editing the publisher's own visibility choice, so un-hiding restores exactly what they asked for. A tenant sending it is ignored.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hiddenReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? license;

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

  /// Slug is the project to update, from the path. The URL is the addressing authority — a `slug` in the body cannot move the write to another project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Tags sets the site's browser tag config: platform slug → non-secret pixel id (e.g. {\"ga4\":\"G-…\",\"meta\":\"…\"}). track.js injects these first-party and the server CAPI reads them, per site. Absent LEAVES them; a present object REPLACES the set (send {} to clear). The ids are public — they ship in the page — so this is not the SECRET path (a CAPI token is sealed via POST /v1/destinations).
  Map<String, String> tags;

  /// Upstream/License credit the third-party work this app was published from — settable after the fact, because the demos that need crediting most are the ones already live. Pointers so \"\" clears a credit and absent leaves it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? upstream;

  /// Visibility flips an existing project between \"public\" and \"private\". Same ONE rule as at create: public is free, private needs a paid plan.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsUpdate &&
    other.cacheControl == cacheControl &&
    other.description == description &&
    other.framework == framework &&
    other.hidden == hidden &&
    other.hiddenReason == hiddenReason &&
    other.license == license &&
    other.name == name &&
    other.repo == repo &&
    other.slug == slug &&
    _deepEquality.equals(other.tags, tags) &&
    other.upstream == upstream &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cacheControl == null ? 0 : cacheControl!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (hiddenReason == null ? 0 : hiddenReason!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (tags.hashCode) +
    (upstream == null ? 0 : upstream!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'ProjectsUpdate[cacheControl=$cacheControl, description=$description, framework=$framework, hidden=$hidden, hiddenReason=$hiddenReason, license=$license, name=$name, repo=$repo, slug=$slug, tags=$tags, upstream=$upstream, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cacheControl != null) {
      json[r'cacheControl'] = this.cacheControl;
    } else {
      json[r'cacheControl'] = null;
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
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.hiddenReason != null) {
      json[r'hiddenReason'] = this.hiddenReason;
    } else {
      json[r'hiddenReason'] = null;
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
      json[r'tags'] = this.tags;
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

  /// Returns a new [ProjectsUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsUpdate(
        cacheControl: mapValueOfType<String>(json, r'cacheControl'),
        description: mapValueOfType<String>(json, r'description'),
        framework: mapValueOfType<String>(json, r'framework'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        hiddenReason: mapValueOfType<String>(json, r'hiddenReason'),
        license: mapValueOfType<String>(json, r'license'),
        name: mapValueOfType<String>(json, r'name'),
        repo: ProjectsCreateRepo.fromJson(json[r'repo']),
        slug: mapValueOfType<String>(json, r'slug'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        upstream: mapValueOfType<String>(json, r'upstream'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<ProjectsUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsUpdate> mapFromJson(dynamic json) {
    final map = <String, ProjectsUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsUpdate-objects as value to a dart map
  static Map<String, List<ProjectsUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

