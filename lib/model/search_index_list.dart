//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SearchIndexList {
  /// Returns a new [SearchIndexList] instance.
  SearchIndexList({
    this.indexes = const [],
  });

  /// Indexes is one row per Meilisearch index, sorted by name. Empty — never absent — when the search service cannot be reached.
  List<SearchIndex> indexes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchIndexList &&
    _deepEquality.equals(other.indexes, indexes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indexes.hashCode);

  @override
  String toString() => 'SearchIndexList[indexes=$indexes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indexes'] = this.indexes;
    return json;
  }

  /// Returns a new [SearchIndexList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchIndexList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchIndexList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchIndexList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchIndexList(
        indexes: SearchIndex.listFromJson(json[r'indexes']),
      );
    }
    return null;
  }

  static List<SearchIndexList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchIndexList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchIndexList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchIndexList> mapFromJson(dynamic json) {
    final map = <String, SearchIndexList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchIndexList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchIndexList-objects as value to a dart map
  static Map<String, List<SearchIndexList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchIndexList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchIndexList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

