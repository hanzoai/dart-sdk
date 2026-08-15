//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WebSearchResults {
  /// Returns a new [WebSearchResults] instance.
  WebSearchResults({
    this.engines = const [],
    this.numberOfResults,
    this.query,
    this.results = const [],
  });

  /// Engines is one entry per engine asked, in the order they were asked. It is ADDITIVE to the SearXNG contract, which the LibreChat client ignores as an unknown field exactly as it ignores `engine` on a result.
  List<WebEngine> engines;

  /// NumberOfResults is len(results) — what this answer carries, never an estimate of what the web holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfResults;

  /// Query is the query that ran, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? query;

  /// Results are the merged hits, deduplicated by normalised URL and capped at 30. Always an array and never null: no hits is an ANSWER, not a fault.
  List<WebResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebSearchResults &&
    _deepEquality.equals(other.engines, engines) &&
    other.numberOfResults == numberOfResults &&
    other.query == query &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (engines.hashCode) +
    (numberOfResults == null ? 0 : numberOfResults!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'WebSearchResults[engines=$engines, numberOfResults=$numberOfResults, query=$query, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'engines'] = this.engines;
    if (this.numberOfResults != null) {
      json[r'number_of_results'] = this.numberOfResults;
    } else {
      json[r'number_of_results'] = null;
    }
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [WebSearchResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebSearchResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebSearchResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebSearchResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebSearchResults(
        engines: WebEngine.listFromJson(json[r'engines']),
        numberOfResults: mapValueOfType<int>(json, r'number_of_results'),
        query: mapValueOfType<String>(json, r'query'),
        results: WebResult.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<WebSearchResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebSearchResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebSearchResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebSearchResults> mapFromJson(dynamic json) {
    final map = <String, WebSearchResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebSearchResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebSearchResults-objects as value to a dart map
  static Map<String, List<WebSearchResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebSearchResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebSearchResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

