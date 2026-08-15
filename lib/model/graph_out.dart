//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphOut {
  /// Returns a new [GraphOut] instance.
  GraphOut({
    this.degraded,
    this.edges = const [],
    this.nodes = const [],
  });

  /// Degraded is true when the store was unreachable and this graph is honestly empty rather than wrong. Absent on a normal answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? degraded;

  /// Edges are the parent tree, the resolved wikilinks and the connector provenance.
  List<GraphEdge> edges;

  /// Nodes are the pages, memories, sources, connectors and unresolved link targets.
  List<GraphNode> nodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphOut &&
    other.degraded == degraded &&
    _deepEquality.equals(other.edges, edges) &&
    _deepEquality.equals(other.nodes, nodes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (degraded == null ? 0 : degraded!.hashCode) +
    (edges.hashCode) +
    (nodes.hashCode);

  @override
  String toString() => 'GraphOut[degraded=$degraded, edges=$edges, nodes=$nodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.degraded != null) {
      json[r'degraded'] = this.degraded;
    } else {
      json[r'degraded'] = null;
    }
      json[r'edges'] = this.edges;
      json[r'nodes'] = this.nodes;
    return json;
  }

  /// Returns a new [GraphOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphOut(
        degraded: mapValueOfType<bool>(json, r'degraded'),
        edges: GraphEdge.listFromJson(json[r'edges']),
        nodes: GraphNode.listFromJson(json[r'nodes']),
      );
    }
    return null;
  }

  static List<GraphOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphOut> mapFromJson(dynamic json) {
    final map = <String, GraphOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphOut-objects as value to a dart map
  static Map<String, List<GraphOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

