//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Volume {
  /// Returns a new [Volume] instance.
  Volume({
    this.blockedReason,
    this.cluster,
    this.clusterId,
    this.controller,
    this.createdAt,
    this.deletable,
    this.dropletIds = const [],
    this.expandBlockedReason,
    this.expandable,
    this.hasUsage,
    this.id,
    this.idle,
    this.monthlyCents,
    this.mountedBy = const [],
    this.name,
    this.nodeName,
    this.pv,
    this.pvPhase,
    this.pvcName,
    this.pvcNamespace,
    this.region,
    this.sizeGiB,
    this.state,
    this.tagCluster,
    this.usedBytes,
    this.wastedGiB,
    this.wastedMonthlyCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blockedReason;

  /// Cluster/ClusterID are the PROVEN owner — resolved through a PV that names this volume, never through the tag.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cluster;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clusterId;

  /// Controller is the workload owning the pod that mounts this volume (\"StatefulSet/luxd\"), or \"\" when nothing mounts it. It names who has to act.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? controller;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deletable;

  List<int> dropletIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expandBlockedReason;

  /// Expandable/ExpandBlockedReason are the GROW verdict, kept separate from Deletable because the two ask opposite questions: a volume is deletable when nothing uses it, and expandable when something uses it in a way this board can grow completely.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? expandable;

  /// HasUsage reports whether a kubelet actually MEASURED this volume's filesystem.  False means NOT MEASURED. It does NOT mean empty, and the three fields below are meaningless — not zero — when it is false. A reading exists only while a running pod has the volume mounted on a node that answered; a detached, idle or unreferenced volume has none. Rendering an unmeasured volume as \"0 used / 100% wasted\" would invent the single most expensive lie this board could tell, so every consumer must branch on this flag and show unknown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasUsage;

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
  bool? idle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyCents;

  List<String> mountedBy;

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
  String? nodeName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pv;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pvPhase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pvcName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pvcNamespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeGiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// TagCluster is the `k8s:<uuid>` tag. ADVISORY ONLY: it outlives the cluster that set it. Shown so the operator can see tag-vs-truth disagree, never acted on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tagCluster;

  /// UsedBytes is the measured filesystem usage. BYTES, not GiB: the volumes this exists to catch hold a fraction of a GiB in 200, and rounding that to an integer GiB would print the very 0 the flag above exists to prevent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usedBytes;

  /// WastedGiB is provisioned minus measured, in the unit DigitalOcean BILLS: whole GiB of the volume's own size, never the filesystem's capacity — a 200 GiB volume carries a 196 GiB filesystem after format overhead, and the invoice says 200.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? wastedGiB;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? wastedMonthlyCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Volume &&
    other.blockedReason == blockedReason &&
    other.cluster == cluster &&
    other.clusterId == clusterId &&
    other.controller == controller &&
    other.createdAt == createdAt &&
    other.deletable == deletable &&
    _deepEquality.equals(other.dropletIds, dropletIds) &&
    other.expandBlockedReason == expandBlockedReason &&
    other.expandable == expandable &&
    other.hasUsage == hasUsage &&
    other.id == id &&
    other.idle == idle &&
    other.monthlyCents == monthlyCents &&
    _deepEquality.equals(other.mountedBy, mountedBy) &&
    other.name == name &&
    other.nodeName == nodeName &&
    other.pv == pv &&
    other.pvPhase == pvPhase &&
    other.pvcName == pvcName &&
    other.pvcNamespace == pvcNamespace &&
    other.region == region &&
    other.sizeGiB == sizeGiB &&
    other.state == state &&
    other.tagCluster == tagCluster &&
    other.usedBytes == usedBytes &&
    other.wastedGiB == wastedGiB &&
    other.wastedMonthlyCents == wastedMonthlyCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedReason == null ? 0 : blockedReason!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (clusterId == null ? 0 : clusterId!.hashCode) +
    (controller == null ? 0 : controller!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (deletable == null ? 0 : deletable!.hashCode) +
    (dropletIds.hashCode) +
    (expandBlockedReason == null ? 0 : expandBlockedReason!.hashCode) +
    (expandable == null ? 0 : expandable!.hashCode) +
    (hasUsage == null ? 0 : hasUsage!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idle == null ? 0 : idle!.hashCode) +
    (monthlyCents == null ? 0 : monthlyCents!.hashCode) +
    (mountedBy.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nodeName == null ? 0 : nodeName!.hashCode) +
    (pv == null ? 0 : pv!.hashCode) +
    (pvPhase == null ? 0 : pvPhase!.hashCode) +
    (pvcName == null ? 0 : pvcName!.hashCode) +
    (pvcNamespace == null ? 0 : pvcNamespace!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (sizeGiB == null ? 0 : sizeGiB!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (tagCluster == null ? 0 : tagCluster!.hashCode) +
    (usedBytes == null ? 0 : usedBytes!.hashCode) +
    (wastedGiB == null ? 0 : wastedGiB!.hashCode) +
    (wastedMonthlyCents == null ? 0 : wastedMonthlyCents!.hashCode);

  @override
  String toString() => 'Volume[blockedReason=$blockedReason, cluster=$cluster, clusterId=$clusterId, controller=$controller, createdAt=$createdAt, deletable=$deletable, dropletIds=$dropletIds, expandBlockedReason=$expandBlockedReason, expandable=$expandable, hasUsage=$hasUsage, id=$id, idle=$idle, monthlyCents=$monthlyCents, mountedBy=$mountedBy, name=$name, nodeName=$nodeName, pv=$pv, pvPhase=$pvPhase, pvcName=$pvcName, pvcNamespace=$pvcNamespace, region=$region, sizeGiB=$sizeGiB, state=$state, tagCluster=$tagCluster, usedBytes=$usedBytes, wastedGiB=$wastedGiB, wastedMonthlyCents=$wastedMonthlyCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blockedReason != null) {
      json[r'blockedReason'] = this.blockedReason;
    } else {
      json[r'blockedReason'] = null;
    }
    if (this.cluster != null) {
      json[r'cluster'] = this.cluster;
    } else {
      json[r'cluster'] = null;
    }
    if (this.clusterId != null) {
      json[r'clusterId'] = this.clusterId;
    } else {
      json[r'clusterId'] = null;
    }
    if (this.controller != null) {
      json[r'controller'] = this.controller;
    } else {
      json[r'controller'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.deletable != null) {
      json[r'deletable'] = this.deletable;
    } else {
      json[r'deletable'] = null;
    }
      json[r'dropletIds'] = this.dropletIds;
    if (this.expandBlockedReason != null) {
      json[r'expandBlockedReason'] = this.expandBlockedReason;
    } else {
      json[r'expandBlockedReason'] = null;
    }
    if (this.expandable != null) {
      json[r'expandable'] = this.expandable;
    } else {
      json[r'expandable'] = null;
    }
    if (this.hasUsage != null) {
      json[r'hasUsage'] = this.hasUsage;
    } else {
      json[r'hasUsage'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idle != null) {
      json[r'idle'] = this.idle;
    } else {
      json[r'idle'] = null;
    }
    if (this.monthlyCents != null) {
      json[r'monthlyCents'] = this.monthlyCents;
    } else {
      json[r'monthlyCents'] = null;
    }
      json[r'mountedBy'] = this.mountedBy;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nodeName != null) {
      json[r'nodeName'] = this.nodeName;
    } else {
      json[r'nodeName'] = null;
    }
    if (this.pv != null) {
      json[r'pv'] = this.pv;
    } else {
      json[r'pv'] = null;
    }
    if (this.pvPhase != null) {
      json[r'pvPhase'] = this.pvPhase;
    } else {
      json[r'pvPhase'] = null;
    }
    if (this.pvcName != null) {
      json[r'pvcName'] = this.pvcName;
    } else {
      json[r'pvcName'] = null;
    }
    if (this.pvcNamespace != null) {
      json[r'pvcNamespace'] = this.pvcNamespace;
    } else {
      json[r'pvcNamespace'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.sizeGiB != null) {
      json[r'sizeGiB'] = this.sizeGiB;
    } else {
      json[r'sizeGiB'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.tagCluster != null) {
      json[r'tagCluster'] = this.tagCluster;
    } else {
      json[r'tagCluster'] = null;
    }
    if (this.usedBytes != null) {
      json[r'usedBytes'] = this.usedBytes;
    } else {
      json[r'usedBytes'] = null;
    }
    if (this.wastedGiB != null) {
      json[r'wastedGiB'] = this.wastedGiB;
    } else {
      json[r'wastedGiB'] = null;
    }
    if (this.wastedMonthlyCents != null) {
      json[r'wastedMonthlyCents'] = this.wastedMonthlyCents;
    } else {
      json[r'wastedMonthlyCents'] = null;
    }
    return json;
  }

  /// Returns a new [Volume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Volume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Volume[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Volume[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Volume(
        blockedReason: mapValueOfType<String>(json, r'blockedReason'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        clusterId: mapValueOfType<String>(json, r'clusterId'),
        controller: mapValueOfType<String>(json, r'controller'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        deletable: mapValueOfType<bool>(json, r'deletable'),
        dropletIds: json[r'dropletIds'] is Iterable
            ? (json[r'dropletIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        expandBlockedReason: mapValueOfType<String>(json, r'expandBlockedReason'),
        expandable: mapValueOfType<bool>(json, r'expandable'),
        hasUsage: mapValueOfType<bool>(json, r'hasUsage'),
        id: mapValueOfType<String>(json, r'id'),
        idle: mapValueOfType<bool>(json, r'idle'),
        monthlyCents: mapValueOfType<int>(json, r'monthlyCents'),
        mountedBy: json[r'mountedBy'] is Iterable
            ? (json[r'mountedBy'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        name: mapValueOfType<String>(json, r'name'),
        nodeName: mapValueOfType<String>(json, r'nodeName'),
        pv: mapValueOfType<String>(json, r'pv'),
        pvPhase: mapValueOfType<String>(json, r'pvPhase'),
        pvcName: mapValueOfType<String>(json, r'pvcName'),
        pvcNamespace: mapValueOfType<String>(json, r'pvcNamespace'),
        region: mapValueOfType<String>(json, r'region'),
        sizeGiB: mapValueOfType<int>(json, r'sizeGiB'),
        state: mapValueOfType<String>(json, r'state'),
        tagCluster: mapValueOfType<String>(json, r'tagCluster'),
        usedBytes: mapValueOfType<int>(json, r'usedBytes'),
        wastedGiB: mapValueOfType<int>(json, r'wastedGiB'),
        wastedMonthlyCents: mapValueOfType<int>(json, r'wastedMonthlyCents'),
      );
    }
    return null;
  }

  static List<Volume> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Volume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Volume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Volume> mapFromJson(dynamic json) {
    final map = <String, Volume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Volume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Volume-objects as value to a dart map
  static Map<String, List<Volume>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Volume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Volume.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

