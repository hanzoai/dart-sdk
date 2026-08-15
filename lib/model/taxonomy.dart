//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Taxonomy {
  /// Returns a new [Taxonomy] instance.
  Taxonomy({
    this.categories = const [],
  });

  /// Categories are the groupings, in display order, each with its own taxa.
  List<Category> categories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Taxonomy &&
    _deepEquality.equals(other.categories, categories);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories.hashCode);

  @override
  String toString() => 'Taxonomy[categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'categories'] = this.categories;
    return json;
  }

  /// Returns a new [Taxonomy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Taxonomy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Taxonomy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Taxonomy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Taxonomy(
        categories: Category.listFromJson(json[r'categories']),
      );
    }
    return null;
  }

  static List<Taxonomy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Taxonomy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Taxonomy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Taxonomy> mapFromJson(dynamic json) {
    final map = <String, Taxonomy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Taxonomy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Taxonomy-objects as value to a dart map
  static Map<String, List<Taxonomy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Taxonomy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Taxonomy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

