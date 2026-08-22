//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoTree {
  /// Returns a new [ArgoTree] instance.
  ArgoTree({
    this.hosts = const [],
    this.nodes = const [],
    this.orphanedNodes = const [],
  });
  /// Hosts is ArgoCD's per-node machine inventory. Always empty: this plane projects applications and serves no cluster-node view.
  List<Object> hosts;

  /// Nodes is the FLAT node list, root first: the App CR, then the objects the operator owns, then their ReplicaSets and Pods. The hierarchy is in ParentRefs, not in the ordering.
  List<ArgoNode> nodes;

  /// OrphanedNodes are objects in the namespace belonging to no application. Always empty: this walk reaches an object only THROUGH ownership from the App CR, so it can never hold one that is orphaned.
  List<ArgoNode> orphanedNodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoTree &&
    _deepEquality.equals(other.hosts, hosts) &&
    _deepEquality.equals(other.nodes, nodes) &&
    _deepEquality.equals(other.orphanedNodes, orphanedNodes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hosts.hashCode) +
    (nodes.hashCode) +
    (orphanedNodes.hashCode);

  @override
  String toString() => 'ArgoTree[hosts=$hosts, nodes=$nodes, orphanedNodes=$orphanedNodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hosts'] = this.hosts;
      json[r'nodes'] = this.nodes;
      json[r'orphanedNodes'] = this.orphanedNodes;
    return json;
  }

  /// Returns a new [ArgoTree] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoTree? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoTree[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoTree[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoTree(
        hosts: json[r'hosts'] is Iterable
            ? (json[r'hosts'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        nodes: ArgoNode.listFromJson(json[r'nodes']),
        orphanedNodes: ArgoNode.listFromJson(json[r'orphanedNodes']),
      );
    }
    return null;
  }

  static List<ArgoTree> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoTree>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoTree.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoTree> mapFromJson(dynamic json) {
    final map = <String, ArgoTree>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoTree.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoTree-objects as value to a dart map
  static Map<String, List<ArgoTree>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoTree>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoTree.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

