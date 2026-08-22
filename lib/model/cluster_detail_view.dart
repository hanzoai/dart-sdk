//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterDetailView {
  /// Returns a new [ClusterDetailView] instance.
  ClusterDetailView({
    this.amdGpu,
    this.createdAt,
    this.doClusterId,
    this.doksClusterId,
    this.kind,
    this.name,
    this.nodeCount,
    this.nodePools = const [],
    this.nodeSize,
    this.nodes = const [],
    this.nvidiaGpu,
    this.region,
    this.status,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amdGpu;

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
  String? doClusterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doksClusterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

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
  int? nodeCount;

  List<NodePoolView> nodePools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeSize;

  /// Nodes is every worker node in the cluster, each in the same shape the machines surface uses — a node IS a machine, addressable by its own id. This is the individual hardware behind the pool counts above.
  List<MachineView> nodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nvidiaGpu;

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
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterDetailView &&
    other.amdGpu == amdGpu &&
    other.createdAt == createdAt &&
    other.doClusterId == doClusterId &&
    other.doksClusterId == doksClusterId &&
    other.kind == kind &&
    other.name == name &&
    other.nodeCount == nodeCount &&
    _deepEquality.equals(other.nodePools, nodePools) &&
    other.nodeSize == nodeSize &&
    _deepEquality.equals(other.nodes, nodes) &&
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
    (nodes.hashCode) +
    (nvidiaGpu == null ? 0 : nvidiaGpu!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ClusterDetailView[amdGpu=$amdGpu, createdAt=$createdAt, doClusterId=$doClusterId, doksClusterId=$doksClusterId, kind=$kind, name=$name, nodeCount=$nodeCount, nodePools=$nodePools, nodeSize=$nodeSize, nodes=$nodes, nvidiaGpu=$nvidiaGpu, region=$region, status=$status]';

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
      json[r'nodes'] = this.nodes;
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

  /// Returns a new [ClusterDetailView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterDetailView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterDetailView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterDetailView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterDetailView(
        amdGpu: mapValueOfType<int>(json, r'amdGpu'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        doClusterId: mapValueOfType<String>(json, r'doClusterId'),
        doksClusterId: mapValueOfType<String>(json, r'doksClusterId'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        nodeCount: mapValueOfType<int>(json, r'nodeCount'),
        nodePools: NodePoolView.listFromJson(json[r'nodePools']),
        nodeSize: mapValueOfType<String>(json, r'nodeSize'),
        nodes: MachineView.listFromJson(json[r'nodes']),
        nvidiaGpu: mapValueOfType<int>(json, r'nvidiaGpu'),
        region: mapValueOfType<String>(json, r'region'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ClusterDetailView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterDetailView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterDetailView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterDetailView> mapFromJson(dynamic json) {
    final map = <String, ClusterDetailView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterDetailView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterDetailView-objects as value to a dart map
  static Map<String, List<ClusterDetailView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterDetailView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterDetailView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

