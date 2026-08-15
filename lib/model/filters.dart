//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Filters {
  /// Returns a new [Filters] instance.
  Filters({
    this.keywords = const [],
    this.regions = const [],
    this.sources = const [],
  });

  /// Keywords keeps only items whose TITLE contains one of these, case-insensitively. They are also the GDELT queries the feed fans out to, one per keyword of three characters or more — so a keyword both widens what is fetched and narrows what is kept.
  List<String> keywords;

  /// Regions keeps only items whose TITLE contains one of these, matched case-insensitively as a substring. Empty keeps every region.
  List<String> regions;

  /// Sources keeps only items whose outlet name contains one of these, case-insensitively. Empty keeps every outlet.
  List<String> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Filters &&
    _deepEquality.equals(other.keywords, keywords) &&
    _deepEquality.equals(other.regions, regions) &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keywords.hashCode) +
    (regions.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'Filters[keywords=$keywords, regions=$regions, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keywords'] = this.keywords;
      json[r'regions'] = this.regions;
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [Filters] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Filters? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Filters[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Filters[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Filters(
        keywords: json[r'keywords'] is Iterable
            ? (json[r'keywords'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        regions: json[r'regions'] is Iterable
            ? (json[r'regions'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Filters> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Filters>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Filters.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Filters> mapFromJson(dynamic json) {
    final map = <String, Filters>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Filters.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Filters-objects as value to a dart map
  static Map<String, List<Filters>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Filters>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Filters.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

