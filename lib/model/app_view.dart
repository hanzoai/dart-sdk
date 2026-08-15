//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AppView {
  /// Returns a new [AppView] instance.
  AppView({
    this.buildType,
    this.createdAt,
    this.currentDeploymentId,
    this.description,
    this.dockerfile,
    this.domains = const [],
    this.env = const [],
    this.environment,
    this.health,
    this.id,
    this.image,
    this.name,
    this.namespace,
    this.org,
    this.phase,
    this.port,
    this.projectId,
    this.replicas,
    this.repo,
    this.secretSync,
    this.secretSyncDetail,
    this.slug,
    this.source_,
    this.status,
    this.storageGb,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfile;

  List<String> domains;

  List<EnvVarJSON> env;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageView? image;

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
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replicas;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GitSource? repo;

  /// \"\"|pending|syncing|ready|failed (secrets.go)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretSync;

  /// honest reason when not ready
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretSyncDetail;

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
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// GiB; absent means stateless
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageGb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppView &&
    other.buildType == buildType &&
    other.createdAt == createdAt &&
    other.currentDeploymentId == currentDeploymentId &&
    other.description == description &&
    other.dockerfile == dockerfile &&
    _deepEquality.equals(other.domains, domains) &&
    _deepEquality.equals(other.env, env) &&
    other.environment == environment &&
    other.health == health &&
    other.id == id &&
    other.image == image &&
    other.name == name &&
    other.namespace == namespace &&
    other.org == org &&
    other.phase == phase &&
    other.port == port &&
    other.projectId == projectId &&
    other.replicas == replicas &&
    other.repo == repo &&
    other.secretSync == secretSync &&
    other.secretSyncDetail == secretSyncDetail &&
    other.slug == slug &&
    other.source_ == source_ &&
    other.status == status &&
    other.storageGb == storageGb &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildType == null ? 0 : buildType!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currentDeploymentId == null ? 0 : currentDeploymentId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dockerfile == null ? 0 : dockerfile!.hashCode) +
    (domains.hashCode) +
    (env.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (replicas == null ? 0 : replicas!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (secretSync == null ? 0 : secretSync!.hashCode) +
    (secretSyncDetail == null ? 0 : secretSyncDetail!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (storageGb == null ? 0 : storageGb!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'AppView[buildType=$buildType, createdAt=$createdAt, currentDeploymentId=$currentDeploymentId, description=$description, dockerfile=$dockerfile, domains=$domains, env=$env, environment=$environment, health=$health, id=$id, image=$image, name=$name, namespace=$namespace, org=$org, phase=$phase, port=$port, projectId=$projectId, replicas=$replicas, repo=$repo, secretSync=$secretSync, secretSyncDetail=$secretSyncDetail, slug=$slug, source_=$source_, status=$status, storageGb=$storageGb, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildType != null) {
      json[r'buildType'] = this.buildType;
    } else {
      json[r'buildType'] = null;
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
    if (this.dockerfile != null) {
      json[r'dockerfile'] = this.dockerfile;
    } else {
      json[r'dockerfile'] = null;
    }
      json[r'domains'] = this.domains;
      json[r'env'] = this.env;
    if (this.environment != null) {
      json[r'environment'] = this.environment;
    } else {
      json[r'environment'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
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
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.phase != null) {
      json[r'phase'] = this.phase;
    } else {
      json[r'phase'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.replicas != null) {
      json[r'replicas'] = this.replicas;
    } else {
      json[r'replicas'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.secretSync != null) {
      json[r'secretSync'] = this.secretSync;
    } else {
      json[r'secretSync'] = null;
    }
    if (this.secretSyncDetail != null) {
      json[r'secretSyncDetail'] = this.secretSyncDetail;
    } else {
      json[r'secretSyncDetail'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.storageGb != null) {
      json[r'storageGb'] = this.storageGb;
    } else {
      json[r'storageGb'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [AppView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppView(
        buildType: mapValueOfType<String>(json, r'buildType'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currentDeploymentId: mapValueOfType<String>(json, r'currentDeploymentId'),
        description: mapValueOfType<String>(json, r'description'),
        dockerfile: mapValueOfType<String>(json, r'dockerfile'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        env: EnvVarJSON.listFromJson(json[r'env']),
        environment: mapValueOfType<String>(json, r'environment'),
        health: mapValueOfType<String>(json, r'health'),
        id: mapValueOfType<String>(json, r'id'),
        image: ImageView.fromJson(json[r'image']),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        org: mapValueOfType<String>(json, r'org'),
        phase: mapValueOfType<String>(json, r'phase'),
        port: mapValueOfType<int>(json, r'port'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        replicas: mapValueOfType<int>(json, r'replicas'),
        repo: GitSource.fromJson(json[r'repo']),
        secretSync: mapValueOfType<String>(json, r'secretSync'),
        secretSyncDetail: mapValueOfType<String>(json, r'secretSyncDetail'),
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
        status: mapValueOfType<String>(json, r'status'),
        storageGb: mapValueOfType<int>(json, r'storageGb'),
        updatedAt: mapValueOfType<int>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<AppView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppView> mapFromJson(dynamic json) {
    final map = <String, AppView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppView-objects as value to a dart map
  static Map<String, List<AppView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

