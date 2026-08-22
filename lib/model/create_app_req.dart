//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateAppReq {
  /// Returns a new [CreateAppReq] instance.
  CreateAppReq({
    this.buildType,
    this.description,
    this.dockerfile,
    this.domains = const [],
    this.env = const [],
    this.environment,
    this.image,
    this.name,
    this.port,
    this.project,
    this.replicas,
    this.repo,
    this.slug,
    this.source_,
    this.storageGb,
  });
  /// BuildType is `pack` — the zero-config default that detects any project — or `dockerfile`, the explicit escape hatch. An image app never builds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  /// Description is free text about what the application is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Dockerfile is the path to build from, for buildType `dockerfile`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfile;

  /// Domains are extra ingress hosts. The canonical default host is always attached; a bare custom host is refused here and must go through add-domain → verify first.
  List<String> domains;

  /// Env is the application's environment. Keys must match `^[A-Za-z_][A-Za-z0-9_]*$`; a variable marked `secret: true` is sealed into KMS and its plaintext is never written to the database.
  List<EnvVarJSON> env;

  /// Environment is the deploy target this app names (\"production\" by default).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? environment;

  /// Image is the container image to run, for source `image`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageOrigin? image;

  /// Name is the application's display name. Required; the slug is derived from it when none is given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Port is the container port the app listens on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// Project is the project to create the application under, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Replicas is how many copies to run; clamped to the deployment's limit rather than refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replicas;

  /// Repo is the git source to build from, for source `git`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GitOrigin? repo;

  /// Slug is the app's identity in the cluster — its CR name and part of its host. Given or derived from Name, it must match `^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$`, and one already used in this project is 409.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Source is `git`, which requires repo.url, or `image`, which requires image.repository. Anything else is 400.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// StorageGB is the persistent volume size in GiB; absent means stateless. Clamped to the deployment's limit rather than refused.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageGb;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAppReq &&
    other.buildType == buildType &&
    other.description == description &&
    other.dockerfile == dockerfile &&
    _deepEquality.equals(other.domains, domains) &&
    _deepEquality.equals(other.env, env) &&
    other.environment == environment &&
    other.image == image &&
    other.name == name &&
    other.port == port &&
    other.project == project &&
    other.replicas == replicas &&
    other.repo == repo &&
    other.slug == slug &&
    other.source_ == source_ &&
    other.storageGb == storageGb;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildType == null ? 0 : buildType!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dockerfile == null ? 0 : dockerfile!.hashCode) +
    (domains.hashCode) +
    (env.hashCode) +
    (environment == null ? 0 : environment!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (replicas == null ? 0 : replicas!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (storageGb == null ? 0 : storageGb!.hashCode);

  @override
  String toString() => 'CreateAppReq[buildType=$buildType, description=$description, dockerfile=$dockerfile, domains=$domains, env=$env, environment=$environment, image=$image, name=$name, port=$port, project=$project, replicas=$replicas, repo=$repo, slug=$slug, source_=$source_, storageGb=$storageGb]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildType != null) {
      json[r'buildType'] = this.buildType;
    } else {
      json[r'buildType'] = null;
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
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
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
    if (this.storageGb != null) {
      json[r'storageGb'] = this.storageGb;
    } else {
      json[r'storageGb'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAppReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAppReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAppReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAppReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAppReq(
        buildType: mapValueOfType<String>(json, r'buildType'),
        description: mapValueOfType<String>(json, r'description'),
        dockerfile: mapValueOfType<String>(json, r'dockerfile'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        env: EnvVarJSON.listFromJson(json[r'env']),
        environment: mapValueOfType<String>(json, r'environment'),
        image: ImageOrigin.fromJson(json[r'image']),
        name: mapValueOfType<String>(json, r'name'),
        port: mapValueOfType<int>(json, r'port'),
        project: mapValueOfType<String>(json, r'project'),
        replicas: mapValueOfType<int>(json, r'replicas'),
        repo: GitOrigin.fromJson(json[r'repo']),
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
        storageGb: mapValueOfType<int>(json, r'storageGb'),
      );
    }
    return null;
  }

  static List<CreateAppReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAppReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAppReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAppReq> mapFromJson(dynamic json) {
    final map = <String, CreateAppReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAppReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAppReq-objects as value to a dart map
  static Map<String, List<CreateAppReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAppReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAppReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

