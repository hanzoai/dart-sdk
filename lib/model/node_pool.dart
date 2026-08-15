//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NodePool {
  /// Returns a new [NodePool] instance.
  NodePool({
    this.blockedReason,
    this.cluster,
    this.clusterId,
    this.clusterSchedulable,
    this.count,
    this.id,
    this.name,
    this.scalable,
    this.size,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blockedReason;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clusterSchedulable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

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
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scalable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodePool &&
    other.blockedReason == blockedReason &&
    other.cluster == cluster &&
    other.clusterId == clusterId &&
    other.clusterSchedulable == clusterSchedulable &&
    other.count == count &&
    other.id == id &&
    other.name == name &&
    other.scalable == scalable &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedReason == null ? 0 : blockedReason!.hashCode) +
    (cluster == null ? 0 : cluster!.hashCode) +
    (clusterId == null ? 0 : clusterId!.hashCode) +
    (clusterSchedulable == null ? 0 : clusterSchedulable!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scalable == null ? 0 : scalable!.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'NodePool[blockedReason=$blockedReason, cluster=$cluster, clusterId=$clusterId, clusterSchedulable=$clusterSchedulable, count=$count, id=$id, name=$name, scalable=$scalable, size=$size]';

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
    if (this.clusterSchedulable != null) {
      json[r'clusterSchedulable'] = this.clusterSchedulable;
    } else {
      json[r'clusterSchedulable'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.scalable != null) {
      json[r'scalable'] = this.scalable;
    } else {
      json[r'scalable'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [NodePool] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodePool? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NodePool[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NodePool[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodePool(
        blockedReason: mapValueOfType<String>(json, r'blockedReason'),
        cluster: mapValueOfType<String>(json, r'cluster'),
        clusterId: mapValueOfType<String>(json, r'clusterId'),
        clusterSchedulable: mapValueOfType<int>(json, r'clusterSchedulable'),
        count: mapValueOfType<int>(json, r'count'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        scalable: mapValueOfType<bool>(json, r'scalable'),
        size: mapValueOfType<String>(json, r'size'),
      );
    }
    return null;
  }

  static List<NodePool> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodePool>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodePool.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodePool> mapFromJson(dynamic json) {
    final map = <String, NodePool>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodePool.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodePool-objects as value to a dart map
  static Map<String, List<NodePool>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodePool>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodePool.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

