//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Leased {
  /// Returns a new [Leased] instance.
  Leased({
    this.class_,
    this.cluster,
    this.id,
    this.runtime,
    this.status,
    this.workdir,
  });
  /// Class is what was actually leased, from the closed set LeaseIn.Class names: exec | dev | desktop | android. A request that named none leased an `exec`, so this is where a caller learns which kind of computer it is holding, and it is what Workdir below follows from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? class_;

  /// Cluster is the attached cluster this sandbox runs on, when one was named. Empty is the home cluster.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cluster;

  /// ID names this computer for every later call — run, read, write, stop and end all take it, and a LeaseIn carrying it resumes THIS sandbox instead of leasing a second one. Minted here; a caller cannot choose it, and a resumed lease that had expired comes back under a new one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Runtime is the boundary this sandbox GOT, which need not be the one asked for — carried for the same reason Workdir is, that it is a fact only the owner knows and a caller assuming it would be holding a second copy. Empty is the node's default runtime, and a real answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Status is where the pod stands, from the store's three: pending | running | error. A lease that ANSWERS has already waited for the pod, so this reads `running` — a start that failed is a 503 and no sandbox at all. Read it anyway: exec refuses a sandbox that is not running, so anything else here is the reason the next call will not work.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Workdir is the absolute directory this sandbox keeps files in, and what a relative path in a later read, write or run resolves against — /work for dev, desktop and android (the project volume's mount point), /mnt/data for exec (the artifact directory the code tool tells the model to write to). A path that climbs above it is refused rather than rewritten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workdir;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leased &&
    other.class_ == class_ &&
    other.cluster == cluster &&
    other.id == id &&
    other.runtime == runtime &&
    other.status == status &&
    other.workdir == workdir;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (class_ == null ? 0 : class_!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (runtime == null ? 0 : runtime!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (workdir == null ? 0 : workdir!.hashCode);

  @override
  String toString() => 'Leased[class_=$class_, cluster=$cluster, id=$id, runtime=$runtime, status=$status, workdir=$workdir]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.class_ != null) {
      json[r'class'] = this.class_;
    } else {
      json[r'class'] = null;
    }
    if (this.cluster != null) {
      json[r'cluster'] = this.cluster;
    } else {
      json[r'cluster'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.workdir != null) {
      json[r'workdir'] = this.workdir;
    } else {
      json[r'workdir'] = null;
    }
    return json;
  }

  /// Returns a new [Leased] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leased? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leased[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leased[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leased(
        class_: mapValueOfType<String>(json, r'class'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        id: mapValueOfType<String>(json, r'id'),
        runtime: mapValueOfType<String>(json, r'runtime'),
        status: mapValueOfType<String>(json, r'status'),
        workdir: mapValueOfType<String>(json, r'workdir'),
      );
    }
    return null;
  }

  static List<Leased> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leased>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leased.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leased> mapFromJson(dynamic json) {
    final map = <String, Leased>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leased.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leased-objects as value to a dart map
  static Map<String, List<Leased>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leased>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leased.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

