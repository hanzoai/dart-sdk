//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsProject {
  /// Returns a new [ProjectsProject] instance.
  ProjectsProject({
    this.analytics,
    this.bucket,
    this.cacheControl,
    this.createdAt,
    this.currentDeploymentId,
    this.description,
    this.forkedFrom,
    this.framework,
    this.hidden,
    this.hiddenReason,
    this.id,
    this.key,
    this.lastPurgeAt,
    this.license,
    this.liveUrl,
    this.name,
    this.org,
    this.repo,
    this.slug,
    this.space,
    this.status,
    this.tags = const {},
    this.updatedAt,
    this.upstream,
    this.visibility,
  });

  /// Analytics is the wired-by-default web-analytics flag (default true). It is the value the app's static-builder reads as deployment.analytics to inject the beacon. Space is the project's Base data space (\"<org>/<slug>\") a deployed site posts form/forum/data submissions to under /v1/base.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? analytics;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  /// Cache is the site's edge-cache state: the HTML/document Cache-Control policy in effect (TTL) and the last edge-purge time, so a console can show freshness.
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
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentDeploymentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ForkedFrom is the parent this project was forked from (\"<org>/<slug>\" of a published project, or a catalog template slug) — the attribution edge a gallery credits.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? forkedFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

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
  String? id;

  /// Key is the project's publishable ingest key, minted at create. It is the value the injected beacon carries and the ONE thing that attributes this site's events; the static-builder reads it beside analytics.  Publishable means it belongs in a page's source: it names a write scope and mints no principal, so it is returned in full rather than masked. Masking it would only mean every caller needed a second endpoint to get the thing the page already ships.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPurgeAt;

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
  String? liveUrl;

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
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectsRepo? repo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? space;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Tags is the site's browser tag config: platform slug → non-secret pixel id (GA measurement, Meta pixel, …) — what track.js injects and the server CAPI reads, per site. Omitted when none are set. The API SECRET is never here (KMS).
  Map<String, String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  /// Upstream/License credit the third-party work this project was published from, and the terms it carries. Omitted when nothing is declared: an absent credit means \"nobody has said\", not \"there is nothing to say\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? upstream;

  /// Visibility is \"public\" or \"private\", and Hidden reports platform moderation. Both are always present (never omitempty) so a consumer can tell a real answer from \"this API is too old to say\" — and so a console never renders a project as public because a field was missing.  Authorship is deliberately absent: it is Org, above.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsProject &&
    other.analytics == analytics &&
    other.bucket == bucket &&
    other.cacheControl == cacheControl &&
    other.createdAt == createdAt &&
    other.currentDeploymentId == currentDeploymentId &&
    other.description == description &&
    other.forkedFrom == forkedFrom &&
    other.framework == framework &&
    other.hidden == hidden &&
    other.hiddenReason == hiddenReason &&
    other.id == id &&
    other.key == key &&
    other.lastPurgeAt == lastPurgeAt &&
    other.license == license &&
    other.liveUrl == liveUrl &&
    other.name == name &&
    other.org == org &&
    other.repo == repo &&
    other.slug == slug &&
    other.space == space &&
    other.status == status &&
    _deepEquality.equals(other.tags, tags) &&
    other.updatedAt == updatedAt &&
    other.upstream == upstream &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (analytics == null ? 0 : analytics!.hashCode) +
    (bucket == null ? 0 : bucket!.hashCode) +
    (cacheControl == null ? 0 : cacheControl!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currentDeploymentId == null ? 0 : currentDeploymentId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (forkedFrom == null ? 0 : forkedFrom!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (hiddenReason == null ? 0 : hiddenReason!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (lastPurgeAt == null ? 0 : lastPurgeAt!.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (liveUrl == null ? 0 : liveUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (space == null ? 0 : space!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (tags.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (upstream == null ? 0 : upstream!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'ProjectsProject[analytics=$analytics, bucket=$bucket, cacheControl=$cacheControl, createdAt=$createdAt, currentDeploymentId=$currentDeploymentId, description=$description, forkedFrom=$forkedFrom, framework=$framework, hidden=$hidden, hiddenReason=$hiddenReason, id=$id, key=$key, lastPurgeAt=$lastPurgeAt, license=$license, liveUrl=$liveUrl, name=$name, org=$org, repo=$repo, slug=$slug, space=$space, status=$status, tags=$tags, updatedAt=$updatedAt, upstream=$upstream, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.analytics != null) {
      json[r'analytics'] = this.analytics;
    } else {
      json[r'analytics'] = null;
    }
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
    if (this.cacheControl != null) {
      json[r'cacheControl'] = this.cacheControl;
    } else {
      json[r'cacheControl'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currentDeploymentId != null) {
      json[r'currentDeploymentId'] = this.currentDeploymentId;
    } else {
      json[r'currentDeploymentId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.forkedFrom != null) {
      json[r'forkedFrom'] = this.forkedFrom;
    } else {
      json[r'forkedFrom'] = null;
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.lastPurgeAt != null) {
      json[r'lastPurgeAt'] = this.lastPurgeAt;
    } else {
      json[r'lastPurgeAt'] = null;
    }
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
    if (this.liveUrl != null) {
      json[r'liveUrl'] = this.liveUrl;
    } else {
      json[r'liveUrl'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
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
    if (this.space != null) {
      json[r'space'] = this.space;
    } else {
      json[r'space'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
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

  /// Returns a new [ProjectsProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsProject(
        analytics: mapValueOfType<bool>(json, r'analytics'),
        bucket: mapValueOfType<String>(json, r'bucket'),
        cacheControl: mapValueOfType<String>(json, r'cacheControl'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currentDeploymentId: mapValueOfType<String>(json, r'currentDeploymentId'),
        description: mapValueOfType<String>(json, r'description'),
        forkedFrom: mapValueOfType<String>(json, r'forkedFrom'),
        framework: mapValueOfType<String>(json, r'framework'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        hiddenReason: mapValueOfType<String>(json, r'hiddenReason'),
        id: mapValueOfType<String>(json, r'id'),
        key: mapValueOfType<String>(json, r'key'),
        lastPurgeAt: mapValueOfType<int>(json, r'lastPurgeAt'),
        license: mapValueOfType<String>(json, r'license'),
        liveUrl: mapValueOfType<String>(json, r'liveUrl'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        repo: ProjectsRepo.fromJson(json[r'repo']),
        slug: mapValueOfType<String>(json, r'slug'),
        space: mapValueOfType<String>(json, r'space'),
        status: mapValueOfType<String>(json, r'status'),
        tags: mapCastOfType<String, String>(json, r'tags') ?? const {},
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
        upstream: mapValueOfType<String>(json, r'upstream'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<ProjectsProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsProject> mapFromJson(dynamic json) {
    final map = <String, ProjectsProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsProject-objects as value to a dart map
  static Map<String, List<ProjectsProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

