//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RepoView {
  /// Returns a new [RepoView] instance.
  RepoView({
    this.branches = const [],
    this.cloneUrl,
    this.createdAt,
    this.defaultBranch,
    this.description,
    this.head,
    this.id,
    this.name,
    this.org,
    this.project,
    this.public,
    this.sizeBytes,
    this.sshUrl,
    this.updatedAt,
  });
  /// Branches are the repo's branch names. Read live, so the detail view carries them and a list row does not.
  List<String> branches;

  /// CloneURL is the HTTPS smart-HTTP remote `git clone` takes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  /// CreatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// DefaultBranch is where HEAD points on a fresh repo (\"main\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  /// Description is the caller-supplied blurb (max 4KiB).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Head is the resolved HEAD commit, empty on an empty repo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? head;

  /// ID is the repo's stable, prefixed identifier (\"repo_\" + 128 random bits).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the org-unique handle, and the last path segment of both URLs below.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org owns the repo — the gateway-minted X-Org-Id, and the isolation key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Project is the optional sub-scope the repo lives in; absent for the org's default scope.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Public grants ANONYMOUS read (fetch) only; push and the whole control plane stay org-authed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// SizeBytes is the repo's measured on-disk size, re-measured on create, after each push, and after a gc. This is the number billing meters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeBytes;

  /// SSHURL is the scp-style SSH remote (git@host:org/repo.git).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sshUrl;

  /// UpdatedAt is RFC 3339 UTC, empty until the first write.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RepoView &&
    _deepEquality.equals(other.branches, branches) &&
    other.cloneUrl == cloneUrl &&
    other.createdAt == createdAt &&
    other.defaultBranch == defaultBranch &&
    other.description == description &&
    other.head == head &&
    other.id == id &&
    other.name == name &&
    other.org == org &&
    other.project == project &&
    other.public == public &&
    other.sizeBytes == sizeBytes &&
    other.sshUrl == sshUrl &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branches.hashCode) +
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (head == null ? 0 : head!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode) +
    (sshUrl == null ? 0 : sshUrl!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'RepoView[branches=$branches, cloneUrl=$cloneUrl, createdAt=$createdAt, defaultBranch=$defaultBranch, description=$description, head=$head, id=$id, name=$name, org=$org, project=$project, public=$public, sizeBytes=$sizeBytes, sshUrl=$sshUrl, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'branches'] = this.branches;
    if (this.cloneUrl != null) {
      json[r'cloneUrl'] = this.cloneUrl;
    } else {
      json[r'cloneUrl'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.defaultBranch != null) {
      json[r'defaultBranch'] = this.defaultBranch;
    } else {
      json[r'defaultBranch'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.head != null) {
      json[r'head'] = this.head;
    } else {
      json[r'head'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
    if (this.sshUrl != null) {
      json[r'sshUrl'] = this.sshUrl;
    } else {
      json[r'sshUrl'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RepoView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RepoView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RepoView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RepoView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RepoView(
        branches: json[r'branches'] is Iterable
            ? (json[r'branches'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cloneUrl: mapValueOfType<String>(json, r'cloneUrl'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        defaultBranch: mapValueOfType<String>(json, r'defaultBranch'),
        description: mapValueOfType<String>(json, r'description'),
        head: mapValueOfType<String>(json, r'head'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        public: mapValueOfType<bool>(json, r'public'),
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
        sshUrl: mapValueOfType<String>(json, r'sshUrl'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<RepoView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RepoView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RepoView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RepoView> mapFromJson(dynamic json) {
    final map = <String, RepoView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RepoView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RepoView-objects as value to a dart map
  static Map<String, List<RepoView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RepoView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RepoView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

