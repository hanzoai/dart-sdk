//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProductRow {
  /// Returns a new [ProductRow] instance.
  ProductRow({
    this.cluster,
    this.declaredTag,
    this.drift,
    this.driftSeverity,
    this.env,
    this.health,
    this.kind,
    this.latestTag,
    this.name,
    this.namespace,
    this.org,
    this.phase,
    this.repo,
    this.runningTag,
    this.tier,
    this.updated,
  });

  /// hanzo-k8s
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cluster;

  /// spec.image.tag on the App CR (declared truth)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? declaredTag;

  /// any drift flag present
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? drift;

  /// ok|yellow|red (rolled-up)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driftSeverity;

  /// main|test|dev (lifecycle namespace)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? env;

  /// green|yellow|red|unknown
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? health;

  /// operator App CR spec.role (sql|kv|generic|ingress) or \"\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// newest released tag (GH release reader — empty until wired)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? latestTag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// k8s namespace
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// image namespace (hanzoai|luxfi|docker.io/…)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// operator status.phase (Running/Creating/…)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phase;

  /// owner/repo image coordinate
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// observed from the live Deployment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runningTag;

  /// derived: cloud|data|edge|daemon|paas|app (grouping)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductRow &&
    other.cluster == cluster &&
    other.declaredTag == declaredTag &&
    other.drift == drift &&
    other.driftSeverity == driftSeverity &&
    other.env == env &&
    other.health == health &&
    other.kind == kind &&
    other.latestTag == latestTag &&
    other.name == name &&
    other.namespace == namespace &&
    other.org == org &&
    other.phase == phase &&
    other.repo == repo &&
    other.runningTag == runningTag &&
    other.tier == tier &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cluster == null ? 0 : cluster!.hashCode) +
    (declaredTag == null ? 0 : declaredTag!.hashCode) +
    (drift == null ? 0 : drift!.hashCode) +
    (driftSeverity == null ? 0 : driftSeverity!.hashCode) +
    (env == null ? 0 : env!.hashCode) +
    (health == null ? 0 : health!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (latestTag == null ? 0 : latestTag!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (phase == null ? 0 : phase!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (runningTag == null ? 0 : runningTag!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ProductRow[cluster=$cluster, declaredTag=$declaredTag, drift=$drift, driftSeverity=$driftSeverity, env=$env, health=$health, kind=$kind, latestTag=$latestTag, name=$name, namespace=$namespace, org=$org, phase=$phase, repo=$repo, runningTag=$runningTag, tier=$tier, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cluster != null) {
      json[r'cluster'] = this.cluster;
    } else {
      json[r'cluster'] = null;
    }
    if (this.declaredTag != null) {
      json[r'declaredTag'] = this.declaredTag;
    } else {
      json[r'declaredTag'] = null;
    }
    if (this.drift != null) {
      json[r'drift'] = this.drift;
    } else {
      json[r'drift'] = null;
    }
    if (this.driftSeverity != null) {
      json[r'driftSeverity'] = this.driftSeverity;
    } else {
      json[r'driftSeverity'] = null;
    }
    if (this.env != null) {
      json[r'env'] = this.env;
    } else {
      json[r'env'] = null;
    }
    if (this.health != null) {
      json[r'health'] = this.health;
    } else {
      json[r'health'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.latestTag != null) {
      json[r'latestTag'] = this.latestTag;
    } else {
      json[r'latestTag'] = null;
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
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.runningTag != null) {
      json[r'runningTag'] = this.runningTag;
    } else {
      json[r'runningTag'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ProductRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductRow(
        cluster: mapValueOfType<String>(json, r'cluster'),
        declaredTag: mapValueOfType<String>(json, r'declaredTag'),
        drift: mapValueOfType<bool>(json, r'drift'),
        driftSeverity: mapValueOfType<String>(json, r'driftSeverity'),
        env: mapValueOfType<String>(json, r'env'),
        health: mapValueOfType<String>(json, r'health'),
        kind: mapValueOfType<String>(json, r'kind'),
        latestTag: mapValueOfType<String>(json, r'latestTag'),
        name: mapValueOfType<String>(json, r'name'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        org: mapValueOfType<String>(json, r'org'),
        phase: mapValueOfType<String>(json, r'phase'),
        repo: mapValueOfType<String>(json, r'repo'),
        runningTag: mapValueOfType<String>(json, r'runningTag'),
        tier: mapValueOfType<String>(json, r'tier'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ProductRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductRow> mapFromJson(dynamic json) {
    final map = <String, ProductRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductRow-objects as value to a dart map
  static Map<String, List<ProductRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

