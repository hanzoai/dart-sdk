//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Pipeline {
  /// Returns a new [Pipeline] instance.
  Pipeline({
    this.behind,
    this.built,
    this.declared,
    this.drift = const [],
    this.head,
    this.image,
    this.name,
    this.namespace,
    this.org,
    this.pinnedAt,
    this.ready,
    this.repo,
    this.running,
    this.since,
    this.want,
  });
  /// Behind counts commits after the one that last produced an image whose own build has FINISHED without producing one, and Since is when the oldest of them landed. A commit still building is not counted, so a push in flight is not drift and a service appears here only once something has actually stopped without shipping. How long that has stood is the number worth acting on; that it is true says nothing about whether anyone should move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? behind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Artifact? built;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Artifact? declared;

  List<String> drift;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Tip? head;

  /// ghcr.io/hanzoai/cloud
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// cloud
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// hanzo
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// Hanzo Git owner; empty when the repo is unresolved
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
  DateTime? pinnedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ready;

  /// hanzo-inc/cloud
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Artifact? running;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? since;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? want;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pipeline &&
    other.behind == behind &&
    other.built == built &&
    other.declared == declared &&
    _deepEquality.equals(other.drift, drift) &&
    other.head == head &&
    other.image == image &&
    other.name == name &&
    other.namespace == namespace &&
    other.org == org &&
    other.pinnedAt == pinnedAt &&
    other.ready == ready &&
    other.repo == repo &&
    other.running == running &&
    other.since == since &&
    other.want == want;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (behind == null ? 0 : behind!.hashCode) +
    (built == null ? 0 : built!.hashCode) +
    (declared == null ? 0 : declared!.hashCode) +
    (drift.hashCode) +
    (head == null ? 0 : head!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (pinnedAt == null ? 0 : pinnedAt!.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (running == null ? 0 : running!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (want == null ? 0 : want!.hashCode);

  @override
  String toString() => 'Pipeline[behind=$behind, built=$built, declared=$declared, drift=$drift, head=$head, image=$image, name=$name, namespace=$namespace, org=$org, pinnedAt=$pinnedAt, ready=$ready, repo=$repo, running=$running, since=$since, want=$want]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.behind != null) {
      json[r'behind'] = this.behind;
    } else {
      json[r'behind'] = null;
    }
    if (this.built != null) {
      json[r'built'] = this.built;
    } else {
      json[r'built'] = null;
    }
    if (this.declared != null) {
      json[r'declared'] = this.declared;
    } else {
      json[r'declared'] = null;
    }
      json[r'drift'] = this.drift;
    if (this.head != null) {
      json[r'head'] = this.head;
    } else {
      json[r'head'] = null;
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
    if (this.pinnedAt != null) {
      json[r'pinnedAt'] = this.pinnedAt!.toUtc().toIso8601String();
    } else {
      json[r'pinnedAt'] = null;
    }
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.running != null) {
      json[r'running'] = this.running;
    } else {
      json[r'running'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.want != null) {
      json[r'want'] = this.want;
    } else {
      json[r'want'] = null;
    }
    return json;
  }

  /// Returns a new [Pipeline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pipeline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pipeline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pipeline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pipeline(
        behind: mapValueOfType<int>(json, r'behind'),
        built: Artifact.fromJson(json[r'built']),
        declared: Artifact.fromJson(json[r'declared']),
        drift: json[r'drift'] is Iterable
            ? (json[r'drift'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        head: Tip.fromJson(json[r'head']),
        image: mapValueOfType<String>(json, r'image'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        org: mapValueOfType<String>(json, r'org'),
        pinnedAt: mapDateTime(json, r'pinnedAt', r''),
        ready: mapValueOfType<int>(json, r'ready'),
        repo: mapValueOfType<String>(json, r'repo'),
        running: Artifact.fromJson(json[r'running']),
        since: mapDateTime(json, r'since', r''),
        want: mapValueOfType<int>(json, r'want'),
      );
    }
    return null;
  }

  static List<Pipeline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pipeline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pipeline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pipeline> mapFromJson(dynamic json) {
    final map = <String, Pipeline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pipeline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pipeline-objects as value to a dart map
  static Map<String, List<Pipeline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pipeline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pipeline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

