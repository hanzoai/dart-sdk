//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexFilter {
  /// Returns a new [IndexFilter] instance.
  IndexFilter({
    this.filterableAttributes = const [],
  });
  /// FilterableAttributes replaces the whole filterable set. Omitted leaves it unchanged; an empty array clears it.
  List<String> filterableAttributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexFilter &&
    _deepEquality.equals(other.filterableAttributes, filterableAttributes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filterableAttributes.hashCode);

  @override
  String toString() => 'IndexFilter[filterableAttributes=$filterableAttributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filterableAttributes'] = this.filterableAttributes;
    return json;
  }

  /// Returns a new [IndexFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexFilter(
        filterableAttributes: json[r'filterableAttributes'] is Iterable
            ? (json[r'filterableAttributes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IndexFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexFilter> mapFromJson(dynamic json) {
    final map = <String, IndexFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexFilter-objects as value to a dart map
  static Map<String, List<IndexFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

