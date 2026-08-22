//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexersOut {
  /// Returns a new [IndexersOut] instance.
  IndexersOut({
    this.indexers = const [],
  });
  /// Indexers is one row per reachable chain indexer, or an empty list when the indexer is unreachable — never a fabricated row.
  List<IndexerView> indexers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexersOut &&
    _deepEquality.equals(other.indexers, indexers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indexers.hashCode);

  @override
  String toString() => 'IndexersOut[indexers=$indexers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indexers'] = this.indexers;
    return json;
  }

  /// Returns a new [IndexersOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexersOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexersOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexersOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexersOut(
        indexers: IndexerView.listFromJson(json[r'indexers']),
      );
    }
    return null;
  }

  static List<IndexersOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexersOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexersOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexersOut> mapFromJson(dynamic json) {
    final map = <String, IndexersOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexersOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexersOut-objects as value to a dart map
  static Map<String, List<IndexersOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexersOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexersOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

