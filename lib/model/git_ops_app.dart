//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GitOpsApp {
  /// Returns a new [GitOpsApp] instance.
  GitOpsApp({
    this.automated,
    this.health,
    this.history = const [],
    this.name,
    this.namespace,
    this.operation,
    this.path,
    this.project,
    this.reconciledAt,
    this.repoURL,
    this.resources,
    this.revision,
    this.selfHeal,
    this.sync_,
    this.targetRevision,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automated;

  /// Healthy|Degraded|Progressing|…
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  List<GitOpsDeploy> history;

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
  String? namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GitOpsOperation? operation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reconciledAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repoURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? resources;

  /// the commit last applied
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? selfHeal;

  /// Synced|OutOfSync|Unknown
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sync_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetRevision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitOpsApp &&
    other.automated == automated &&
    other.health == health &&
    _deepEquality.equals(other.history, history) &&
    other.name == name &&
    other.namespace == namespace &&
    other.operation == operation &&
    other.path == path &&
    other.project == project &&
    other.reconciledAt == reconciledAt &&
    other.repoURL == repoURL &&
    other.resources == resources &&
    other.revision == revision &&
    other.selfHeal == selfHeal &&
    other.sync_ == sync_ &&
    other.targetRevision == targetRevision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (automated == null ? 0 : automated!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (history.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (operation == null ? 0 : operation!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (reconciledAt == null ? 0 : reconciledAt!.hashCode) +
    (repoURL == null ? 0 : repoURL!.hashCode) +
    (resources == null ? 0 : resources!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (selfHeal == null ? 0 : selfHeal!.hashCode) +
    (sync_ == null ? 0 : sync_!.hashCode) +
    (targetRevision == null ? 0 : targetRevision!.hashCode);

  @override
  String toString() => 'GitOpsApp[automated=$automated, health=$health, history=$history, name=$name, namespace=$namespace, operation=$operation, path=$path, project=$project, reconciledAt=$reconciledAt, repoURL=$repoURL, resources=$resources, revision=$revision, selfHeal=$selfHeal, sync_=$sync_, targetRevision=$targetRevision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.automated != null) {
      json[r'automated'] = this.automated;
    } else {
      json[r'automated'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
      json[r'history'] = this.history;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.operation != null) {
      json[r'operation'] = this.operation;
    } else {
      json[r'operation'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.reconciledAt != null) {
      json[r'reconciledAt'] = this.reconciledAt;
    } else {
      json[r'reconciledAt'] = null;
    }
    if (this.repoURL != null) {
      json[r'repoURL'] = this.repoURL;
    } else {
      json[r'repoURL'] = null;
    }
    if (this.resources != null) {
      json[r'resources'] = this.resources;
    } else {
      json[r'resources'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.selfHeal != null) {
      json[r'selfHeal'] = this.selfHeal;
    } else {
      json[r'selfHeal'] = null;
    }
    if (this.sync_ != null) {
      json[r'sync'] = this.sync_;
    } else {
      json[r'sync'] = null;
    }
    if (this.targetRevision != null) {
      json[r'targetRevision'] = this.targetRevision;
    } else {
      json[r'targetRevision'] = null;
    }
    return json;
  }

  /// Returns a new [GitOpsApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitOpsApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitOpsApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitOpsApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitOpsApp(
        automated: mapValueOfType<bool>(json, r'automated'),
        health: mapValueOfType<String>(json, r'health'),
        history: GitOpsDeploy.listFromJson(json[r'history']),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        operation: GitOpsOperation.fromJson(json[r'operation']),
        path: mapValueOfType<String>(json, r'path'),
        project: mapValueOfType<String>(json, r'project'),
        reconciledAt: mapValueOfType<String>(json, r'reconciledAt'),
        repoURL: mapValueOfType<String>(json, r'repoURL'),
        resources: mapValueOfType<int>(json, r'resources'),
        revision: mapValueOfType<String>(json, r'revision'),
        selfHeal: mapValueOfType<bool>(json, r'selfHeal'),
        sync_: mapValueOfType<String>(json, r'sync'),
        targetRevision: mapValueOfType<String>(json, r'targetRevision'),
      );
    }
    return null;
  }

  static List<GitOpsApp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitOpsApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitOpsApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitOpsApp> mapFromJson(dynamic json) {
    final map = <String, GitOpsApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitOpsApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitOpsApp-objects as value to a dart map
  static Map<String, List<GitOpsApp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitOpsApp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitOpsApp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

