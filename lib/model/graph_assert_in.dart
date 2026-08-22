//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphAssertIn {
  /// Returns a new [GraphAssertIn] instance.
  GraphAssertIn({
    this.assertions = const [],
  });
  /// Assertions is the batch. Each member is judged on its own: one refusal does not discard the rest, because a caller redelivering five facts must not lose four of them to one malformed fifth.
  List<GraphFact> assertions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphAssertIn &&
    _deepEquality.equals(other.assertions, assertions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assertions.hashCode);

  @override
  String toString() => 'GraphAssertIn[assertions=$assertions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assertions'] = this.assertions;
    return json;
  }

  /// Returns a new [GraphAssertIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphAssertIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphAssertIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphAssertIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphAssertIn(
        assertions: GraphFact.listFromJson(json[r'assertions']),
      );
    }
    return null;
  }

  static List<GraphAssertIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphAssertIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphAssertIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphAssertIn> mapFromJson(dynamic json) {
    final map = <String, GraphAssertIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphAssertIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphAssertIn-objects as value to a dart map
  static Map<String, List<GraphAssertIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphAssertIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphAssertIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

