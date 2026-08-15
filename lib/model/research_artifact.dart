//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ResearchArtifact {
  /// Returns a new [ResearchArtifact] instance.
  ResearchArtifact({
    this.content,
    this.gitBranch,
    this.gitDirty,
    this.gitSha,
    this.kind,
    this.libVersions,
    this.project,
    this.ref,
    this.retentionClass,
    this.runId,
    this.sha256,
    this.ts,
    this.visibility,
  });

  /// base64 bytes on write; the server hashes + stores them (never returned)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitBranch;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? gitDirty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitSha;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  Object? libVersions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// server-derived content address (sha256:<hash>)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retentionClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runId;

  /// SERVER-derived on write; the identity
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? visibility;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResearchArtifact &&
    other.content == content &&
    other.gitBranch == gitBranch &&
    other.gitDirty == gitDirty &&
    other.gitSha == gitSha &&
    other.kind == kind &&
    other.libVersions == libVersions &&
    other.project == project &&
    other.ref == ref &&
    other.retentionClass == retentionClass &&
    other.runId == runId &&
    other.sha256 == sha256 &&
    other.ts == ts &&
    other.visibility == visibility;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (gitBranch == null ? 0 : gitBranch!.hashCode) +
    (gitDirty == null ? 0 : gitDirty!.hashCode) +
    (gitSha == null ? 0 : gitSha!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (libVersions == null ? 0 : libVersions!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (retentionClass == null ? 0 : retentionClass!.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (sha256 == null ? 0 : sha256!.hashCode) +
    (ts == null ? 0 : ts!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode);

  @override
  String toString() => 'ResearchArtifact[content=$content, gitBranch=$gitBranch, gitDirty=$gitDirty, gitSha=$gitSha, kind=$kind, libVersions=$libVersions, project=$project, ref=$ref, retentionClass=$retentionClass, runId=$runId, sha256=$sha256, ts=$ts, visibility=$visibility]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.gitBranch != null) {
      json[r'git_branch'] = this.gitBranch;
    } else {
      json[r'git_branch'] = null;
    }
    if (this.gitDirty != null) {
      json[r'git_dirty'] = this.gitDirty;
    } else {
      json[r'git_dirty'] = null;
    }
    if (this.gitSha != null) {
      json[r'git_sha'] = this.gitSha;
    } else {
      json[r'git_sha'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.libVersions != null) {
      json[r'lib_versions'] = this.libVersions;
    } else {
      json[r'lib_versions'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.retentionClass != null) {
      json[r'retention_class'] = this.retentionClass;
    } else {
      json[r'retention_class'] = null;
    }
    if (this.runId != null) {
      json[r'run_id'] = this.runId;
    } else {
      json[r'run_id'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    if (this.ts != null) {
      json[r'ts'] = this.ts;
    } else {
      json[r'ts'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    return json;
  }

  /// Returns a new [ResearchArtifact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResearchArtifact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResearchArtifact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResearchArtifact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResearchArtifact(
        content: mapValueOfType<String>(json, r'content'),
        gitBranch: mapValueOfType<String>(json, r'git_branch'),
        gitDirty: mapValueOfType<bool>(json, r'git_dirty'),
        gitSha: mapValueOfType<String>(json, r'git_sha'),
        kind: mapValueOfType<String>(json, r'kind'),
        libVersions: mapValueOfType<Object>(json, r'lib_versions'),
        project: mapValueOfType<String>(json, r'project'),
        ref: mapValueOfType<String>(json, r'ref'),
        retentionClass: mapValueOfType<String>(json, r'retention_class'),
        runId: mapValueOfType<String>(json, r'run_id'),
        sha256: mapValueOfType<String>(json, r'sha256'),
        ts: mapValueOfType<int>(json, r'ts'),
        visibility: mapValueOfType<String>(json, r'visibility'),
      );
    }
    return null;
  }

  static List<ResearchArtifact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResearchArtifact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResearchArtifact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResearchArtifact> mapFromJson(dynamic json) {
    final map = <String, ResearchArtifact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResearchArtifact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResearchArtifact-objects as value to a dart map
  static Map<String, List<ResearchArtifact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResearchArtifact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResearchArtifact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

