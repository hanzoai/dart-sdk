//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Taxon {
  /// Returns a new [Taxon] instance.
  Taxon({
    this.brands = const [],
    this.category,
    this.description,
    this.href,
    this.icon,
    this.id,
    this.name,
    this.order,
    this.owner,
    this.published,
    this.route,
    this.tags = const [],
  });

  /// Brands are the brands whose console shows this taxon. Absent means every brand its category admits.
  List<String> brands;

  /// Category is the id of the category this taxon is filed under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Description is the one line shown beneath the name in the catalogue and nav.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Href is the absolute URL an external product launches, for the taxa that genuinely live at their own domain. Empty for an in-console product.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  /// Icon names the icon the surface renders, e.g. \"Database\". It is a NAME, not an image: which icon set draws it is the rendering surface's business.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// ID is the stable slug this taxon is addressed by, e.g. \"vector\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the display name, e.g. \"Vector\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Order is where the taxon sits within its category, ascending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  /// Owner is the org this product belongs to: the platform's own org for one every tenant sees, or your org for one you added. Where two rows share an id, yours is the one served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? owner;

  /// Published is whether the taxon is shown. An unpublished taxon is served only to an editor, so a product can be staged before anyone sees it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

  /// Route is the in-console path this taxon opens, e.g. \"/vector\". Set for a product the console renders itself; empty for an external one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? route;

  /// Tags are free-form labels for search and grouping across categories.
  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Taxon &&
    _deepEquality.equals(other.brands, brands) &&
    other.category == category &&
    other.description == description &&
    other.href == href &&
    other.icon == icon &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.owner == owner &&
    other.published == published &&
    other.route == route &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brands.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (href == null ? 0 : href!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'Taxon[brands=$brands, category=$category, description=$description, href=$href, icon=$icon, id=$id, name=$name, order=$order, owner=$owner, published=$published, route=$route, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brands'] = this.brands;
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [Taxon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Taxon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Taxon[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Taxon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Taxon(
        brands: json[r'brands'] is Iterable
            ? (json[r'brands'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        category: mapValueOfType<String>(json, r'category'),
        description: mapValueOfType<String>(json, r'description'),
        href: mapValueOfType<String>(json, r'href'),
        icon: mapValueOfType<String>(json, r'icon'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        order: mapValueOfType<int>(json, r'order'),
        owner: mapValueOfType<String>(json, r'owner'),
        published: mapValueOfType<bool>(json, r'published'),
        route: mapValueOfType<String>(json, r'route'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Taxon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Taxon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Taxon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Taxon> mapFromJson(dynamic json) {
    final map = <String, Taxon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Taxon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Taxon-objects as value to a dart map
  static Map<String, List<Taxon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Taxon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Taxon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

