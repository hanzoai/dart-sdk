//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SearchResults {
  /// Returns a new [SearchResults] instance.
  SearchResults({
    this.degraded,
    this.query,
    this.results = const [],
    this.type,
  });
  /// Degraded is true when retrieval failed and the empty result set is an outage rather than a real absence of matches. Absent on a healthy answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? degraded;

  /// Query echoes the query that was run.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  /// Results are the matching spans, best first. Never null — an empty search is an empty array.
  List<Span> results;

  /// Type echoes the retrieval tier that ran, after defaulting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchResults &&
    other.degraded == degraded &&
    other.query == query &&
    _deepEquality.equals(other.results, results) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (degraded == null ? 0 : degraded!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (results.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'SearchResults[degraded=$degraded, query=$query, results=$results, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.degraded != null) {
      json[r'degraded'] = this.degraded;
    } else {
      json[r'degraded'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
      json[r'results'] = this.results;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [SearchResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchResults(
        degraded: mapValueOfType<bool>(json, r'degraded'),
        query: mapValueOfType<String>(json, r'query'),
        results: Span.listFromJson(json[r'results']),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<SearchResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchResults> mapFromJson(dynamic json) {
    final map = <String, SearchResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchResults-objects as value to a dart map
  static Map<String, List<SearchResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

