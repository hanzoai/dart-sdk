//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphQLIn {
  /// Returns a new [GraphQLIn] instance.
  GraphQLIn({
    this.operationName,
    this.query,
    this.variables,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  Object? variables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphQLIn &&
    other.operationName == operationName &&
    other.query == query &&
    other.variables == variables;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (operationName == null ? 0 : operationName!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (variables == null ? 0 : variables!.hashCode);

  @override
  String toString() => 'GraphQLIn[operationName=$operationName, query=$query, variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.operationName != null) {
      json[r'operationName'] = this.operationName;
    } else {
      json[r'operationName'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    return json;
  }

  /// Returns a new [GraphQLIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphQLIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphQLIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphQLIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphQLIn(
        operationName: mapValueOfType<String>(json, r'operationName'),
        query: mapValueOfType<String>(json, r'query'),
        variables: mapValueOfType<Object>(json, r'variables'),
      );
    }
    return null;
  }

  static List<GraphQLIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphQLIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphQLIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphQLIn> mapFromJson(dynamic json) {
    final map = <String, GraphQLIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphQLIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphQLIn-objects as value to a dart map
  static Map<String, List<GraphQLIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphQLIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphQLIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

