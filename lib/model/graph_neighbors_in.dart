//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphNeighborsIn {
  /// Returns a new [GraphNeighborsIn] instance.
  GraphNeighborsIn({
    this.asOf,
    this.depth,
    this.direction,
    this.relation,
    this.seeds = const [],
  });
  /// AsOf walks the graph as it stood at an instant, RFC 3339. Absent walks it as it stands now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Depth is how many hops. Absent is one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? depth;

  /// Direction is out, in or both. Out follows an edge from its entity to its value — what the node points at; in follows it the other way — what points at the node; both is the union of the two, not a third rule. Absent is out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? direction;

  /// Relation narrows the walk to one edge relation. Absent follows all. Only edges are ever followed: an assertion whose value is a scalar is a property and is never a hop.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? relation;

  /// Seeds is where the walk starts. At least one.
  List<String> seeds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphNeighborsIn &&
    other.asOf == asOf &&
    other.depth == depth &&
    other.direction == direction &&
    other.relation == relation &&
    _deepEquality.equals(other.seeds, seeds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOf == null ? 0 : asOf!.hashCode) +
    (depth == null ? 0 : depth!.hashCode) +
    (direction == null ? 0 : direction!.hashCode) +
    (relation == null ? 0 : relation!.hashCode) +
    (seeds.hashCode);

  @override
  String toString() => 'GraphNeighborsIn[asOf=$asOf, depth=$depth, direction=$direction, relation=$relation, seeds=$seeds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOf != null) {
      json[r'as_of'] = this.asOf;
    } else {
      json[r'as_of'] = null;
    }
    if (this.depth != null) {
      json[r'depth'] = this.depth;
    } else {
      json[r'depth'] = null;
    }
    if (this.direction != null) {
      json[r'direction'] = this.direction;
    } else {
      json[r'direction'] = null;
    }
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
      json[r'seeds'] = this.seeds;
    return json;
  }

  /// Returns a new [GraphNeighborsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphNeighborsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphNeighborsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphNeighborsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphNeighborsIn(
        asOf: mapValueOfType<String>(json, r'as_of'),
        depth: mapValueOfType<int>(json, r'depth'),
        direction: mapValueOfType<String>(json, r'direction'),
        relation: mapValueOfType<String>(json, r'relation'),
        seeds: json[r'seeds'] is Iterable
            ? (json[r'seeds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GraphNeighborsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphNeighborsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphNeighborsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphNeighborsIn> mapFromJson(dynamic json) {
    final map = <String, GraphNeighborsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphNeighborsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphNeighborsIn-objects as value to a dart map
  static Map<String, List<GraphNeighborsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphNeighborsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphNeighborsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

