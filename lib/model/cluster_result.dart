//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClusterResult {
  /// Returns a new [ClusterResult] instance.
  ClusterResult({
    this.amdGpu,
    this.cluster,
    this.error,
    this.folded,
    this.nodes,
    this.nvidiaGpu,
    this.region,
    this.source_,
  });

  /// AmdGPU is how many AMD GPUs those nodes advertise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amdGpu;

  /// Cluster is the stable fleet name the cluster was folded under — the name /v1/clusters shows and a workload targets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cluster;

  /// Error is why this cluster did not fold — a billing denial, an unsafe kubeconfig, or an unreachable apiserver. It never contains credential material.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Folded is whether it reached the fleet. False means Error says why, and this cluster alone was skipped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? folded;

  /// Nodes is how many nodes the fleet counted in it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodes;

  /// NvidiaGPU is how many NVIDIA GPUs those nodes advertise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nvidiaGpu;

  /// Region is the provider region it runs in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? region;

  /// Source is the cluster's own name at the provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClusterResult &&
    other.amdGpu == amdGpu &&
    other.cluster == cluster &&
    other.error == error &&
    other.folded == folded &&
    other.nodes == nodes &&
    other.nvidiaGpu == nvidiaGpu &&
    other.region == region &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amdGpu == null ? 0 : amdGpu!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (folded == null ? 0 : folded!.hashCode) +
    (nodes == null ? 0 : nodes!.hashCode) +
    (nvidiaGpu == null ? 0 : nvidiaGpu!.hashCode) +
    (region == null ? 0 : region!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'ClusterResult[amdGpu=$amdGpu, cluster=$cluster, error=$error, folded=$folded, nodes=$nodes, nvidiaGpu=$nvidiaGpu, region=$region, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amdGpu != null) {
      json[r'amdGpu'] = this.amdGpu;
    } else {
      json[r'amdGpu'] = null;
    }
    if (this.cluster != null) {
      json[r'cluster'] = this.cluster;
    } else {
      json[r'cluster'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.folded != null) {
      json[r'folded'] = this.folded;
    } else {
      json[r'folded'] = null;
    }
    if (this.nodes != null) {
      json[r'nodes'] = this.nodes;
    } else {
      json[r'nodes'] = null;
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
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClusterResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClusterResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterResult(
        amdGpu: mapValueOfType<int>(json, r'amdGpu'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        error: mapValueOfType<String>(json, r'error'),
        folded: mapValueOfType<bool>(json, r'folded'),
        nodes: mapValueOfType<int>(json, r'nodes'),
        nvidiaGpu: mapValueOfType<int>(json, r'nvidiaGpu'),
        region: mapValueOfType<String>(json, r'region'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<ClusterResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClusterResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterResult> mapFromJson(dynamic json) {
    final map = <String, ClusterResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterResult-objects as value to a dart map
  static Map<String, List<ClusterResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClusterResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

