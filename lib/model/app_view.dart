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
  /// BuildType is how a git app builds: `pack`, the zero-config default that detects the project, or `dockerfile`. An image app carries `image`, which means it never builds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  /// CreatedAt is when the app was created, unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// CurrentDeploymentID is the deployment that is live — the pointer a deploy advances monotonically by version, so it never regresses to an older one. Empty until the first deploy reaches the cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentDeploymentId;

  /// Description is free text about what the app is. Nothing derives from it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Dockerfile is the path inside the repo to build from, for buildType `dockerfile`. The build path keys off its presence, and it is validated at create against the same allowlist the privileged build enforces.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfile;

  /// Domains are the ingress hosts rendered into the app's CR, its own `<slug>.<org>.<sites host>` first. That one is seeded at create and cannot be removed; a custom host joins only after add-domain and DNS verification.
  List<String> domains;

  /// Env is the app's environment variables, with every SECRET value masked to \"\" — the plaintext is in KMS and this surface never echoes it. That masking is why an empty secret value means \"keep what is sealed\" when posted back.
  List<EnvVarJSON> env;

  /// Environment is the deploy target this app names, `production` when none was given. It is a LABEL: /v1/platform/environments derives the environment list from the apps that name one, so an environment exists as long as an app points at it and no route creates or deletes one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// Health rolls ready-vs-desired replicas up to a colour: green (all ready), yellow (some ready, or deliberately scaled to zero), red (none), or \"\" when the cluster reports no replica counts at all — unknown, never a guessed green.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  /// ID is the server-minted application id (`app_…`). Routes address an app by project and slug; this is the key its deployments and builds carry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Image is the image a source `image` app runs. For a git app only the tag is filled, stamped by the deploy that went live; the built ref is on the deployment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageView? image;

  /// Name is the display name. It is not an address — the slug is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Namespace is where the app's cluster objects live, `tenant-<org>`. It is derived from the validated org and is never accepted from a request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// Org is the tenant that owns the app. It comes from the validated identity, never from the request, and it is the boundary every route is scoped to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Phase is the operator's own `status.phase` for the app's Service CR, read from the cluster on this request. Empty when there is no CR yet or the cluster could not be read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  /// Port is the container port traffic is sent to. 8080 when the create asked for none, or for one outside 1–65535.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// ProjectID is the IAM project the app lives under, and it is that project's NAME — the (org,name) key IAM identifies it by, which is also what the `:project` path segment carries. There is no platform-minted project id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// Replicas is how many copies the CR declares. It is CLAMPED to the deployment's ceiling rather than refused, so it can be below what was asked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replicas;

  /// Repo is the git origin a source `git` app builds from, and the repo+branch a landed push has to match to build it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GitSource? repo;

  /// SecretSync is how far the app's secret env has got into the cluster: \"\"|pending|syncing|ready|failed (secrets.go). It is best-effort and never fails a deploy, so `pending` is ordinary right after one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretSync;

  /// SecretSyncDetail is the honest reason when the sync is not ready — a missing CRD, an RBAC grant, a per-tenant credential. Empty when it is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secretSyncDetail;

  /// Slug is the app's identity in the cluster: the operator CR's name, the first label of its default host, and the `:app` path segment. Unique per project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Source is what the app deploys FROM: `git`, which builds Repo, or `image`, which runs Image as it is. It decides whether a deploy builds at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Status is the lifecycle THIS store records: draft (created, nothing in the cluster yet), building, deploying, live, stopped or error. What the cluster itself says is Phase and Health.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// StorageGB is the persistent volume size in GiB. Absent means stateless — no volume at all — and it is clamped like Replicas.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageGb;

  /// UpdatedAt is when it last changed, unix seconds. Every lifecycle transition moves it, so it tracks deploys as well as edits.
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

