//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class D1Query {
  /// Returns a new [D1Query] instance.
  D1Query({
    this.params = const [],
    this.sql,
  });
  /// Params are the statement's bound values, in the order its `?` placeholders appear — a string, a number, a boolean or null, whatever the column takes. Absent means the statement carries no placeholders; bind values here rather than interpolating them into the statement.
  List<Object> params;

  /// SQL is the statement to run. Blank (or absent) is refused before anything reaches D1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sql;

  @override
  bool operator ==(Object other) => identical(this, other) || other is D1Query &&
    _deepEquality.equals(other.params, params) &&
    other.sql == sql;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (params.hashCode) +
    (sql == null ? 0 : sql!.hashCode);

  @override
  String toString() => 'D1Query[params=$params, sql=$sql]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'params'] = this.params;
    if (this.sql != null) {
      json[r'sql'] = this.sql;
    } else {
      json[r'sql'] = null;
    }
    return json;
  }

  /// Returns a new [D1Query] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static D1Query? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "D1Query[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "D1Query[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return D1Query(
        params: json[r'params'] is Iterable
            ? (json[r'params'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        sql: mapValueOfType<String>(json, r'sql'),
      );
    }
    return null;
  }

  static List<D1Query> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <D1Query>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = D1Query.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, D1Query> mapFromJson(dynamic json) {
    final map = <String, D1Query>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = D1Query.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of D1Query-objects as value to a dart map
  static Map<String, List<D1Query>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<D1Query>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = D1Query.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

