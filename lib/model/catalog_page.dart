//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CatalogPage {
  /// Returns a new [CatalogPage] instance.
  CatalogPage({
    this.data = const [],
    this.facets = const {},
    this.total,
  });

  /// Data is the page of matching entries, most recently updated first.
  List<Entry> data;

  /// Facets counts the whole matching set along every browse axis, so a rail a client renders is a rail that has results behind it. Keyed axis → value → count.
  Map<String, Map<String, int>> facets;

  /// Total is how many entries matched BEFORE paging — what a pager sizes itself on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CatalogPage &&
    _deepEquality.equals(other.data, data) &&
    _deepEquality.equals(other.facets, facets) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (facets.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'CatalogPage[data=$data, facets=$facets, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'facets'] = this.facets;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [CatalogPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CatalogPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CatalogPage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CatalogPage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CatalogPage(
        data: Entry.listFromJson(json[r'data']),
        facets: json[r'facets'] is Map
            ? (json[r'facets'] as Map).map((k, v) => MapEntry(k as String, (v as Map).cast<String, int>()))
            : const {},
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<CatalogPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CatalogPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CatalogPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CatalogPage> mapFromJson(dynamic json) {
    final map = <String, CatalogPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CatalogPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CatalogPage-objects as value to a dart map
  static Map<String, List<CatalogPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CatalogPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CatalogPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

