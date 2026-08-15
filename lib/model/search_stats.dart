//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SearchStats {
  /// Returns a new [SearchStats] instance.
  SearchStats({
    this.searchesPerDay = const [],
    this.totalDocuments,
    this.totalSearches,
    this.totalSessions,
  });

  /// SearchesPerDay is always empty, for the same reason as totalSearches.
  List<DayCount> searchesPerDay;

  /// TotalDocuments is the sum of every index's document count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalDocuments;

  /// TotalSearches is always 0: Meilisearch keeps no query-history counter, so this surface reports the honest zero rather than an estimate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSearches;

  /// TotalSessions is always 0, for the same reason as totalSearches.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalSessions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchStats &&
    _deepEquality.equals(other.searchesPerDay, searchesPerDay) &&
    other.totalDocuments == totalDocuments &&
    other.totalSearches == totalSearches &&
    other.totalSessions == totalSessions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (searchesPerDay.hashCode) +
    (totalDocuments == null ? 0 : totalDocuments!.hashCode) +
    (totalSearches == null ? 0 : totalSearches!.hashCode) +
    (totalSessions == null ? 0 : totalSessions!.hashCode);

  @override
  String toString() => 'SearchStats[searchesPerDay=$searchesPerDay, totalDocuments=$totalDocuments, totalSearches=$totalSearches, totalSessions=$totalSessions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'searchesPerDay'] = this.searchesPerDay;
    if (this.totalDocuments != null) {
      json[r'totalDocuments'] = this.totalDocuments;
    } else {
      json[r'totalDocuments'] = null;
    }
    if (this.totalSearches != null) {
      json[r'totalSearches'] = this.totalSearches;
    } else {
      json[r'totalSearches'] = null;
    }
    if (this.totalSessions != null) {
      json[r'totalSessions'] = this.totalSessions;
    } else {
      json[r'totalSessions'] = null;
    }
    return json;
  }

  /// Returns a new [SearchStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchStats(
        searchesPerDay: DayCount.listFromJson(json[r'searchesPerDay']),
        totalDocuments: mapValueOfType<int>(json, r'totalDocuments'),
        totalSearches: mapValueOfType<int>(json, r'totalSearches'),
        totalSessions: mapValueOfType<int>(json, r'totalSessions'),
      );
    }
    return null;
  }

  static List<SearchStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchStats> mapFromJson(dynamic json) {
    final map = <String, SearchStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchStats-objects as value to a dart map
  static Map<String, List<SearchStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

