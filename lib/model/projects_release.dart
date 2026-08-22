//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsRelease {
  /// Returns a new [ProjectsRelease] instance.
  ProjectsRelease({
    this.active,
    this.bytes,
    this.createdAt,
    this.objects,
    this.releaseId,
    this.slug,
    this.source_,
    this.url,
  });
  /// Active is whether this is the release the site is SERVING right now. Exactly one release of a site is active; the others are kept so they can be activated again, until retention reclaims them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// Bytes is their total size in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bytes;

  /// CreatedAt is when the release was cut, as Unix seconds — not when it was last activated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Objects is how many files the release holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? objects;

  /// ReleaseID is derived from a DIGEST of the release's own manifest, so identical content is the same release and a release can never be confused with another one. Activating an older id IS the rollback.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? releaseId;

  /// Slug is the site this release belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Source is what the release was cut from — the build output or upload it was promoted out of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// URL is where the site serves. Present only on the ACTIVE release, since an inactive one is not answering anywhere.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsRelease &&
    other.active == active &&
    other.bytes == bytes &&
    other.createdAt == createdAt &&
    other.objects == objects &&
    other.releaseId == releaseId &&
    other.slug == slug &&
    other.source_ == source_ &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (bytes == null ? 0 : bytes!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (objects == null ? 0 : objects!.hashCode) +
    (releaseId == null ? 0 : releaseId!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ProjectsRelease[active=$active, bytes=$bytes, createdAt=$createdAt, objects=$objects, releaseId=$releaseId, slug=$slug, source_=$source_, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.bytes != null) {
      json[r'bytes'] = this.bytes;
    } else {
      json[r'bytes'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.objects != null) {
      json[r'objects'] = this.objects;
    } else {
      json[r'objects'] = null;
    }
    if (this.releaseId != null) {
      json[r'releaseId'] = this.releaseId;
    } else {
      json[r'releaseId'] = null;
    }
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
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsRelease] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsRelease? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsRelease[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsRelease[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsRelease(
        active: mapValueOfType<bool>(json, r'active'),
        bytes: mapValueOfType<int>(json, r'bytes'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        objects: mapValueOfType<int>(json, r'objects'),
        releaseId: mapValueOfType<String>(json, r'releaseId'),
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ProjectsRelease> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsRelease>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsRelease.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsRelease> mapFromJson(dynamic json) {
    final map = <String, ProjectsRelease>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsRelease.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsRelease-objects as value to a dart map
  static Map<String, List<ProjectsRelease>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsRelease>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsRelease.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

