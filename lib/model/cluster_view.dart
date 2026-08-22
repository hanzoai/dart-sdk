//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterView {
  /// Returns a new [ClusterView] instance.
  ClusterView({
    this.amdGpu,
    this.createdAt,
    this.doClusterId,
    this.doksClusterId,
    this.kind,
    this.name,
    this.nodeCount,
    this.nodePools = const [],
    this.nodeSize,
    this.nvidiaGpu,
    this.region,
    this.status,
  });
  /// AmdGPU is the same count for `amd.com/gpu`: AMD accelerators across the BYO cluster's nodes, as of the attach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amdGpu;

  /// CreatedAt is when the cluster started existing: the earliest creation time among its pools for a managed cluster, and for a BYO one the RFC 3339 moment it was attached. Empty when the source states none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// DoClusterID carries the SAME id as DoksClusterID. Both names exist because the console's Cluster type reads either one; neither is a second identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doClusterId;

  /// DoksClusterID is the provider's own id for the cluster, and the value the /v1/visor/k8s/clusters/:id routes take. Empty for a BYO cluster: an attached kubeconfig was never provisioned, so there is no provider id to state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doksClusterId;

  /// Kind says which of the two kinds of cluster this row is, and there are only two: \"managed\" — Visor provisioned it and Hanzo's account pays the provider — or \"byo\", an existing cluster the org attached by kubeconfig.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the cluster's name: the provider's for a managed cluster, and for a BYO one the lower-cased fleet name it was attached under — which is also how the detach route addresses it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// NodeCount is how many worker nodes the cluster has — the sum over its pools for a managed cluster, and for a BYO one the node count read off the cluster when it was attached.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodeCount;

  /// NodePools is the authoritative node inventory — every pool, each with its own size and count. It is empty in two cases that are not \"no pools\": a row from the /v1/visor/k8s/clusters LIST, which is deliberately lightweight and whose :id detail carries them, and a BYO cluster, whose pools were never read.
  List<NodePoolView> nodePools;

  /// NodeSize is a display convenience: the size slug of the FIRST pool. A cluster mixing sizes has more than one, and NodePools is where they all are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeSize;

  /// NvidiaGPU is how many NVIDIA accelerators the cluster's nodes advertise, the sum of `nvidia.com/gpu` allocatable across them. BYO only, and counted ONCE when the cluster was attached — it is an inventory, not live capacity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nvidiaGpu;

  /// Region is the provider region slug for a managed cluster. A BYO cluster has no region we can read, so it carries the free-form `provider` label the attach named it with (\"gke\", \"on-prem\") instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  /// Status is the cluster's state: the provider's own word for a managed cluster (\"running\", \"provisioning\"), \"unknown\" when the provider stated none, and always \"attached\" for a BYO cluster — that one says the kubeconfig is on file, not that the cluster is reachable this second.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterView &&
    other.amdGpu == amdGpu &&
    other.createdAt == createdAt &&
    other.doClusterId == doClusterId &&
    other.doksClusterId == doksClusterId &&
    other.kind == kind &&
    other.name == name &&
    other.nodeCount == nodeCount &&
    _deepEquality.equals(other.nodePools, nodePools) &&
    other.nodeSize == nodeSize &&
    other.nvidiaGpu == nvidiaGpu &&
    other.region == region &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amdGpu == null ? 0 : amdGpu!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (doClusterId == null ? 0 : doClusterId!.hashCode) +
    (doksClusterId == null ? 0 : doksClusterId!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nodeCount == null ? 0 : nodeCount!.hashCode) +
    (nodePools.hashCode) +
    (nodeSize == null ? 0 : nodeSize!.hashCode) +
    (nvidiaGpu == null ? 0 : nvidiaGpu!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ClusterView[amdGpu=$amdGpu, createdAt=$createdAt, doClusterId=$doClusterId, doksClusterId=$doksClusterId, kind=$kind, name=$name, nodeCount=$nodeCount, nodePools=$nodePools, nodeSize=$nodeSize, nvidiaGpu=$nvidiaGpu, region=$region, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amdGpu != null) {
      json[r'amdGpu'] = this.amdGpu;
    } else {
      json[r'amdGpu'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.doClusterId != null) {
      json[r'doClusterId'] = this.doClusterId;
    } else {
      json[r'doClusterId'] = null;
    }
    if (this.doksClusterId != null) {
      json[r'doksClusterId'] = this.doksClusterId;
    } else {
      json[r'doksClusterId'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nodeCount != null) {
      json[r'nodeCount'] = this.nodeCount;
    } else {
      json[r'nodeCount'] = null;
    }
      json[r'nodePools'] = this.nodePools;
    if (this.nodeSize != null) {
      json[r'nodeSize'] = this.nodeSize;
    } else {
      json[r'nodeSize'] = null;
    }
    if (this.nvidiaGpu != null) {
      json[r'nvidiaGpu'] = this.nvidiaGpu;
    } else {
      json[r'nvidiaGpu'] = null;
    }
    if (this.region != null) {
      json[r'region'] = this.region;
    } else {
      json[r'region'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterView(
        amdGpu: mapValueOfType<int>(json, r'amdGpu'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        doClusterId: mapValueOfType<String>(json, r'doClusterId'),
        doksClusterId: mapValueOfType<String>(json, r'doksClusterId'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        nodeCount: mapValueOfType<int>(json, r'nodeCount'),
        nodePools: NodePoolView.listFromJson(json[r'nodePools']),
        nodeSize: mapValueOfType<String>(json, r'nodeSize'),
        nvidiaGpu: mapValueOfType<int>(json, r'nvidiaGpu'),
        region: mapValueOfType<String>(json, r'region'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ClusterView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterView> mapFromJson(dynamic json) {
    final map = <String, ClusterView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterView-objects as value to a dart map
  static Map<String, List<ClusterView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

