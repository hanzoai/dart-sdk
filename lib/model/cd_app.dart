//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CDApp {
  /// Returns a new [CDApp] instance.
  CDApp({
    this.automated,
    this.health,
    this.message,
    this.name,
    this.namespace,
    this.operationMessage,
    this.path,
    this.phase,
    this.project,
    this.reconciledAt,
    this.revision,
    this.selfHeal,
    this.sync_,
  });
  /// Automated is whether CD applies git without being asked. It is cd.automated in the values file, rendered by the ApplicationSet's templatePatch — false means the Application reports drift and nothing moves.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automated;

  /// Health is the workload's verdict: Healthy, Progressing, Degraded, Missing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  /// Message is why, when Health is not Healthy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Name is the Application name the generator mints: <namespace>-<app>. It is the join key against a Declaration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Namespace is the DESTINATION namespace as the CR declares it — where the workload lands. For a fleet Application that is the org, but this is the OBSERVED field and not our model of it: the two can disagree, and a board whose whole job is drift must be able to show that they do.
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
  String? operationMessage;

  /// Path is the values file CD renders against, relative to the chart source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Phase is the last sync operation's phase (Running, Succeeded, Failed) and OperationMessage is its message. A Failed phase with a Synced verdict is the shape a stuck Application takes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  /// Project is the AppProject fence the sync is admitted under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// ReconciledAt is when CD last compared this Application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reconciledAt;

  /// Revision is the universe commit CD last applied. Empty means it has not applied one — never assume it means main.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revision;

  /// SelfHeal is whether CD also corrects drift the cluster introduced.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? selfHeal;

  /// Sync is CD's verdict on git-versus-cluster: Synced, OutOfSync, or Unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sync_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CDApp &&
    other.automated == automated &&
    other.health == health &&
    other.message == message &&
    other.name == name &&
    other.namespace == namespace &&
    other.operationMessage == operationMessage &&
    other.path == path &&
    other.phase == phase &&
    other.project == project &&
    other.reconciledAt == reconciledAt &&
    other.revision == revision &&
    other.selfHeal == selfHeal &&
    other.sync_ == sync_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (automated == null ? 0 : automated!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (operationMessage == null ? 0 : operationMessage!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (reconciledAt == null ? 0 : reconciledAt!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (selfHeal == null ? 0 : selfHeal!.hashCode) +
    (sync_ == null ? 0 : sync_!.hashCode);

  @override
  String toString() => 'CDApp[automated=$automated, health=$health, message=$message, name=$name, namespace=$namespace, operationMessage=$operationMessage, path=$path, phase=$phase, project=$project, reconciledAt=$reconciledAt, revision=$revision, selfHeal=$selfHeal, sync_=$sync_]';

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
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
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
    if (this.operationMessage != null) {
      json[r'operationMessage'] = this.operationMessage;
    } else {
      json[r'operationMessage'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
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
    return json;
  }

  /// Returns a new [CDApp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CDApp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CDApp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CDApp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CDApp(
        automated: mapValueOfType<bool>(json, r'automated'),
        health: mapValueOfType<String>(json, r'health'),
        message: mapValueOfType<String>(json, r'message'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        operationMessage: mapValueOfType<String>(json, r'operationMessage'),
        path: mapValueOfType<String>(json, r'path'),
        phase: mapValueOfType<String>(json, r'phase'),
        project: mapValueOfType<String>(json, r'project'),
        reconciledAt: mapValueOfType<String>(json, r'reconciledAt'),
        revision: mapValueOfType<String>(json, r'revision'),
        selfHeal: mapValueOfType<bool>(json, r'selfHeal'),
        sync_: mapValueOfType<String>(json, r'sync'),
      );
    }
    return null;
  }

  static List<CDApp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CDApp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CDApp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CDApp> mapFromJson(dynamic json) {
    final map = <String, CDApp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CDApp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CDApp-objects as value to a dart map
  static Map<String, List<CDApp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CDApp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CDApp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

