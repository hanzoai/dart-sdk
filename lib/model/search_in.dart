//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SearchIn {
  /// Returns a new [SearchIn] instance.
  SearchIn({
    this.doctypes = const [],
    this.limit,
    this.project,
    this.query,
  });

  /// DocTypes restricts retrieval to a subset of the indexed knowledge doctypes (kb-page, kb-memory, kb-source). An empty or foreign list reads all of them.
  List<String> doctypes;

  /// Limit bounds the hits returned. Default 10, maximum 50.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Project narrows retrieval to one project scope.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Query is the natural-language question. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchIn &&
    _deepEquality.equals(other.doctypes, doctypes) &&
    other.limit == limit &&
    other.project == project &&
    other.query == query;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (doctypes.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (query == null ? 0 : query!.hashCode);

  @override
  String toString() => 'SearchIn[doctypes=$doctypes, limit=$limit, project=$project, query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'doctypes'] = this.doctypes;
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    return json;
  }

  /// Returns a new [SearchIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchIn(
        doctypes: json[r'doctypes'] is Iterable
            ? (json[r'doctypes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        limit: mapValueOfType<int>(json, r'limit'),
        project: mapValueOfType<String>(json, r'project'),
        query: mapValueOfType<String>(json, r'query'),
      );
    }
    return null;
  }

  static List<SearchIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchIn> mapFromJson(dynamic json) {
    final map = <String, SearchIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchIn-objects as value to a dart map
  static Map<String, List<SearchIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

