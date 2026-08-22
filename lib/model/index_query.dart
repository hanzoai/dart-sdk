//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexQuery {
  /// Returns a new [IndexQuery] instance.
  IndexQuery({
    this.filter,
    this.limit,
    this.offset,
    this.q,
  });
  Object? filter;

  /// Limit is how many hits to return. Absent means 20; the ceiling is 1000.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Offset is where to start. Absent means 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Q is the search text. Typos are forgiven. An empty Q matches everything, which is how a client lists an index by relevance rather than by insertion order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? q;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexQuery &&
    other.filter == filter &&
    other.limit == limit &&
    other.offset == offset &&
    other.q == q;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (q == null ? 0 : q!.hashCode);

  @override
  String toString() => 'IndexQuery[filter=$filter, limit=$limit, offset=$offset, q=$q]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.q != null) {
      json[r'q'] = this.q;
    } else {
      json[r'q'] = null;
    }
    return json;
  }

  /// Returns a new [IndexQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexQuery(
        filter: mapValueOfType<Object>(json, r'filter'),
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        q: mapValueOfType<String>(json, r'q'),
      );
    }
    return null;
  }

  static List<IndexQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexQuery> mapFromJson(dynamic json) {
    final map = <String, IndexQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexQuery-objects as value to a dart map
  static Map<String, List<IndexQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

