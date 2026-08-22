//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphQLError {
  /// Returns a new [GraphQLError] instance.
  GraphQLError({
    this.message,
    this.path = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<String> path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphQLError &&
    other.message == message &&
    _deepEquality.equals(other.path, path);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (path.hashCode);

  @override
  String toString() => 'GraphQLError[message=$message, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'path'] = this.path;
    return json;
  }

  /// Returns a new [GraphQLError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphQLError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphQLError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphQLError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphQLError(
        message: mapValueOfType<String>(json, r'message'),
        path: json[r'path'] is Iterable
            ? (json[r'path'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GraphQLError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphQLError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphQLError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphQLError> mapFromJson(dynamic json) {
    final map = <String, GraphQLError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphQLError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphQLError-objects as value to a dart map
  static Map<String, List<GraphQLError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphQLError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphQLError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

