//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphNeighborsOut {
  /// Returns a new [GraphNeighborsOut] instance.
  GraphNeighborsOut({
    this.bound,
    this.depth,
    this.entities = const [],
    this.truncated,
  });
  /// Bound is the ceiling this walk was held to, the same for every caller, so Truncated can be read against a number rather than guessed at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bound;

  /// Depth is the deepest hop count actually reached. It is at most the depth asked for, and smaller when the walk ran out of edges first.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? depth;

  /// Entities is everything reached, the seeds included, ordered by the fewest hops that reach each one and then by key.
  List<String> entities;

  /// Truncated says the bound stopped the walk. The bound is part of the answer rather than a silent short read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphNeighborsOut &&
    other.bound == bound &&
    other.depth == depth &&
    _deepEquality.equals(other.entities, entities) &&
    other.truncated == truncated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bound == null ? 0 : bound!.hashCode) +
    (depth == null ? 0 : depth!.hashCode) +
    (entities.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode);

  @override
  String toString() => 'GraphNeighborsOut[bound=$bound, depth=$depth, entities=$entities, truncated=$truncated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bound != null) {
      json[r'bound'] = this.bound;
    } else {
      json[r'bound'] = null;
    }
    if (this.depth != null) {
      json[r'depth'] = this.depth;
    } else {
      json[r'depth'] = null;
    }
      json[r'entities'] = this.entities;
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    return json;
  }

  /// Returns a new [GraphNeighborsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphNeighborsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphNeighborsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphNeighborsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphNeighborsOut(
        bound: mapValueOfType<int>(json, r'bound'),
        depth: mapValueOfType<int>(json, r'depth'),
        entities: json[r'entities'] is Iterable
            ? (json[r'entities'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        truncated: mapValueOfType<bool>(json, r'truncated'),
      );
    }
    return null;
  }

  static List<GraphNeighborsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphNeighborsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphNeighborsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphNeighborsOut> mapFromJson(dynamic json) {
    final map = <String, GraphNeighborsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphNeighborsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphNeighborsOut-objects as value to a dart map
  static Map<String, List<GraphNeighborsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphNeighborsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphNeighborsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

