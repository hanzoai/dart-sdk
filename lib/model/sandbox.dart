//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Sandbox {
  /// Returns a new [Sandbox] instance.
  Sandbox({
    this.class_,
    this.connectedAt,
    this.createdAt,
    this.error,
    this.expiresAt,
    this.id,
    this.image,
    this.kind,
    this.lastUsedAt,
    this.org,
    this.project,
    this.runtime,
    this.status,
    this.volume,
  });
  /// Class is what the sandbox is FOR, and it decides the image, the working directory and the isolation: \"exec\" for a code-interpreter call (workdir /mnt/data, no project, bounded per org), \"dev\" for a workspace bound to a project (workdir /work, single-attach), \"desktop\" for one with a screen.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  /// ConnectedAt is when somebody was last known to have this sandbox's project OPEN, Unix seconds. It is a fact with an EXPIRY rather than a flag: a watcher restamps it every beat of its stream, and it goes stale on its own when the stream dies, so nothing has to be turned off by a process that may not be there any more. The reaper reads it to choose WHICH idle allowance applies — see lifecycle.go.  Zero means nobody has said so, which puts the sandbox on the short clock.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectedAt;

  /// CreatedAt is when the lease was first taken, Unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Error is why the sandbox could not come up, in plain words. Present only with status \"error\", and it is the field to read rather than inferring a cause from the absence of a pod.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// ExpiresAt is when the lease ends, Unix seconds. Past it the reaper may take the sandbox at any time; it is a deadline, not a guarantee of survival until then, since an idle sandbox goes sooner.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresAt;

  /// ID is the sandbox's server-minted handle and what every operation addresses it by. The caller does not choose it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Image is the container image this sandbox is actually running — the one the class chose, or an override the policy admitted. It is what ran, not what was asked for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Kind is the resource family this row belongs to. Always \"sandbox\" here; it exists because the store this shares is keyed across kinds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// LastUsedAt is when the sandbox last did work, Unix seconds. The reaper reads it: a sandbox idle past the idle window is reclaimed even inside its TTL, because an idle lease is capacity nobody is using.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastUsedAt;

  /// Org is the org that holds the lease — the validated caller's, never a value a request supplied. It is also the store's key, so a sandbox is not merely filtered out of another org's answers; it is unreachable from them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Project is the project this sandbox is bound to. A dev or desktop sandbox has one and is SINGLE-ATTACH under it, so asking twice resumes rather than leasing a second; an exec sandbox has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Runtime is the isolation boundary this sandbox GOT, which is not always the one it asked for: a caller states a preference and runtimeFor answers with what the sandbox can actually have. Reported so a person comparing two runtimes is comparing the runtimes they got rather than the ones they typed — the difference between those two is the whole reason to record it.  Empty means the node's default runtime, which is a real answer and not a missing one.  This is not a copy that can go stale. runtimeClassName is IMMUTABLE on a pod, a sandbox's pod is created once and never recreated (restartPolicy Never, no pool), and its name is never reused — so for as long as the pod this row names exists, it is running this runtime. The alternative, asking the apiserver on every read, buys nothing and costs a round trip per row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Status is where the sandbox is in its life: \"pending\" while the pod is coming up, \"running\" once it can take work, \"error\" when it cannot. Only a running sandbox takes an exec or mints an interactive ticket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Volume is the persistent volume attached to the sandbox, when it has one. A dev sandbox keeps its work across leases through it; an exec sandbox has none and loses everything outside /mnt/data when the lease ends.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sandbox &&
    other.class_ == class_ &&
    other.connectedAt == connectedAt &&
    other.createdAt == createdAt &&
    other.error == error &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.image == image &&
    other.kind == kind &&
    other.lastUsedAt == lastUsedAt &&
    other.org == org &&
    other.project == project &&
    other.runtime == runtime &&
    other.status == status &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (connectedAt == null ? 0 : connectedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (lastUsedAt == null ? 0 : lastUsedAt!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'Sandbox[class_=$class_, connectedAt=$connectedAt, createdAt=$createdAt, error=$error, expiresAt=$expiresAt, id=$id, image=$image, kind=$kind, lastUsedAt=$lastUsedAt, org=$org, project=$project, runtime=$runtime, status=$status, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'class'] = this.class_;
    } else {
      json[r'class'] = null;
    }
    if (this.connectedAt != null) {
      json[r'connectedAt'] = this.connectedAt;
    } else {
      json[r'connectedAt'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
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
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.lastUsedAt != null) {
      json[r'lastUsedAt'] = this.lastUsedAt;
    } else {
      json[r'lastUsedAt'] = null;
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
    if (this.runtime != null) {
      json[r'runtime'] = this.runtime;
    } else {
      json[r'runtime'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [Sandbox] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sandbox? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Sandbox[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Sandbox[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Sandbox(
        class_: mapValueOfType<String>(json, r'class'),
        connectedAt: mapValueOfType<int>(json, r'connectedAt'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        error: mapValueOfType<String>(json, r'error'),
        expiresAt: mapValueOfType<int>(json, r'expiresAt'),
        id: mapValueOfType<String>(json, r'id'),
        image: mapValueOfType<String>(json, r'image'),
        kind: mapValueOfType<String>(json, r'kind'),
        lastUsedAt: mapValueOfType<int>(json, r'lastUsedAt'),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        status: mapValueOfType<String>(json, r'status'),
        volume: mapValueOfType<String>(json, r'volume'),
      );
    }
    return null;
  }

  static List<Sandbox> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sandbox>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sandbox.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sandbox> mapFromJson(dynamic json) {
    final map = <String, Sandbox>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sandbox.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sandbox-objects as value to a dart map
  static Map<String, List<Sandbox>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sandbox>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sandbox.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

