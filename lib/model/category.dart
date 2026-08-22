//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Category {
  /// Returns a new [Category] instance.
  Category({
    this.brands = const [],
    this.id,
    this.label,
    this.order,
    this.owner,
    this.summary,
    this.taxa = const [],
  });
  /// Brands are the brands whose console shows this category. Absent means every brand.
  List<String> brands;

  /// ID is the stable slug this category is addressed by, e.g. \"observe\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Label is the display name, e.g. \"Observe\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Order is where the category sits among its siblings, ascending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  /// Owner is the org this category belongs to: the platform's own org for a category every tenant sees, or your org for one you added. It tells a console which rows it may offer to edit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// Summary is the one line describing what the category groups, shown as the header copy on its landing page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Taxa are the products filed under this category, in display order.
  List<Taxon> taxa;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Category &&
    _deepEquality.equals(other.brands, brands) &&
    other.id == id &&
    other.label == label &&
    other.order == order &&
    other.owner == owner &&
    other.summary == summary &&
    _deepEquality.equals(other.taxa, taxa);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brands.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (taxa.hashCode);

  @override
  String toString() => 'Category[brands=$brands, id=$id, label=$label, order=$order, owner=$owner, summary=$summary, taxa=$taxa]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brands'] = this.brands;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'taxa'] = this.taxa;
    return json;
  }

  /// Returns a new [Category] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Category? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Category[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Category[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Category(
        brands: json[r'brands'] is Iterable
            ? (json[r'brands'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<String>(json, r'id'),
        label: mapValueOfType<String>(json, r'label'),
        order: mapValueOfType<int>(json, r'order'),
        owner: mapValueOfType<String>(json, r'owner'),
        summary: mapValueOfType<String>(json, r'summary'),
        taxa: Taxon.listFromJson(json[r'taxa']),
      );
    }
    return null;
  }

  static List<Category> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Category>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Category.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Category> mapFromJson(dynamic json) {
    final map = <String, Category>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Category.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Category-objects as value to a dart map
  static Map<String, List<Category>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Category>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Category.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

