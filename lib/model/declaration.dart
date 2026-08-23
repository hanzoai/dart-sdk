//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Declaration {
  /// Returns a new [Declaration] instance.
  Declaration({
    this.application,
    this.automated,
    this.digest,
    this.env = const [],
    this.hosts = const [],
    this.name,
    this.org,
    this.path,
    this.project,
    this.replicas,
    this.repository,
    this.tag,
  });
  /// Application is the CD Application name the generator mints: <org>-<name>. It is the join key against /v1/platform/cd.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? application;

  /// Automated is cd.automated: false means the Application reports drift and NOTHING moves. It is off by default for a new file on purpose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? automated;

  /// image.digest — wins over tag
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// Env is the declared container environment, as the chart's list of {name,value}. It is read back so a re-declare of an identical body is a no-op rather than a refusal — idempotency is what makes a retry safe.
  List<DeclareEnv> env;

  /// ingress.hosts, both shapes flattened
  List<String> hosts;

  /// the Helm release name — the file's basename
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Org is the owner. It is ALSO the values directory and the destination namespace, because those are one value under one name — see the header.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Path is the file, relative to the repository root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Project is the AppProject the sync is admitted under, derived from the directory exactly as the ApplicationSet derives it. It differs from Org for a reserved directory, which syncs under the platform fence.
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
  int? replicas;

  /// image.repository
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repository;

  /// image.tag
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Declaration &&
    other.application == application &&
    other.automated == automated &&
    other.digest == digest &&
    _deepEquality.equals(other.env, env) &&
    _deepEquality.equals(other.hosts, hosts) &&
    other.name == name &&
    other.org == org &&
    other.path == path &&
    other.project == project &&
    other.replicas == replicas &&
    other.repository == repository &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application == null ? 0 : application!.hashCode) +
    (automated == null ? 0 : automated!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (env.hashCode) +
    (hosts.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (replicas == null ? 0 : replicas!.hashCode) +
    (repository == null ? 0 : repository!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'Declaration[application=$application, automated=$automated, digest=$digest, env=$env, hosts=$hosts, name=$name, org=$org, path=$path, project=$project, replicas=$replicas, repository=$repository, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.automated != null) {
      json[r'automated'] = this.automated;
    } else {
      json[r'automated'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
      json[r'env'] = this.env;
      json[r'hosts'] = this.hosts;
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
    if (this.replicas != null) {
      json[r'replicas'] = this.replicas;
    } else {
      json[r'replicas'] = null;
    }
    if (this.repository != null) {
      json[r'repository'] = this.repository;
    } else {
      json[r'repository'] = null;
    }
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    return json;
  }

  /// Returns a new [Declaration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Declaration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Declaration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Declaration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Declaration(
        application: mapValueOfType<String>(json, r'application'),
        automated: mapValueOfType<bool>(json, r'automated'),
        digest: mapValueOfType<String>(json, r'digest'),
        env: DeclareEnv.listFromJson(json[r'env']),
        hosts: json[r'hosts'] is Iterable
            ? (json[r'hosts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        org: mapValueOfType<String>(json, r'org'),
        path: mapValueOfType<String>(json, r'path'),
        project: mapValueOfType<String>(json, r'project'),
        replicas: mapValueOfType<int>(json, r'replicas'),
        repository: mapValueOfType<String>(json, r'repository'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<Declaration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Declaration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Declaration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Declaration> mapFromJson(dynamic json) {
    final map = <String, Declaration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Declaration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Declaration-objects as value to a dart map
  static Map<String, List<Declaration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Declaration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Declaration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

