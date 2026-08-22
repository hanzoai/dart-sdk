//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphQLOut {
  /// Returns a new [GraphQLOut] instance.
  GraphQLOut({
    this.data,
    this.errors = const [],
  });
  Object? data;

  List<GraphQLError> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphQLOut &&
    other.data == data &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'GraphQLOut[data=$data, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [GraphQLOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphQLOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphQLOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphQLOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphQLOut(
        data: mapValueOfType<Object>(json, r'data'),
        errors: GraphQLError.listFromJson(json[r'errors']),
      );
    }
    return null;
  }

  static List<GraphQLOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphQLOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphQLOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphQLOut> mapFromJson(dynamic json) {
    final map = <String, GraphQLOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphQLOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphQLOut-objects as value to a dart map
  static Map<String, List<GraphQLOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphQLOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphQLOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

