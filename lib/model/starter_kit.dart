//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StarterKit {
  /// Returns a new [StarterKit] instance.
  StarterKit({
    this.category,
    this.demo,
    this.description,
    this.features = const [],
    this.framework,
    this.org,
    this.preview,
    this.rating,
    this.slug,
    this.source_,
    this.tier,
    this.title,
    this.useCase,
    this.variants = const [],
  });

  /// groups the kit in the gallery browser (\"Portfolio\", \"SaaS\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// live demo (<slug>.hanzo.app), when deployed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? demo;

  /// the browse-card blurb
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// the highlights the card lists, at most 32
  List<String> features;

  /// the stack the kit is built on (\"Next.js 14.2 + TS\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// owner of a PRIVATE template; empty in the public catalog
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// the still image the browse card renders
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preview;

  /// Rating is public-gallery curation, on the same terms as Tier: catalog-only, never accepted from a request, absent on a customer's own kit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rating;

  /// the kit's identity — lowercase alphanumeric with dashes, max 40
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// the repository the kit is forked from
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Tier is public-gallery curation, carried verbatim from the embedded catalog. No request can set it — neither write body has the field and neither builds a kit carrying one — so it is absent on every customer-published kit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tier;

  /// display name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// what the kit is for, in a phrase
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? useCase;

  /// the shapes this template ships in
  List<Variant> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StarterKit &&
    other.category == category &&
    other.demo == demo &&
    other.description == description &&
    _deepEquality.equals(other.features, features) &&
    other.framework == framework &&
    other.org == org &&
    other.preview == preview &&
    other.rating == rating &&
    other.slug == slug &&
    other.source_ == source_ &&
    other.tier == tier &&
    other.title == title &&
    other.useCase == useCase &&
    _deepEquality.equals(other.variants, variants);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (demo == null ? 0 : demo!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (features.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (useCase == null ? 0 : useCase!.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'StarterKit[category=$category, demo=$demo, description=$description, features=$features, framework=$framework, org=$org, preview=$preview, rating=$rating, slug=$slug, source_=$source_, tier=$tier, title=$title, useCase=$useCase, variants=$variants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.demo != null) {
      json[r'demo'] = this.demo;
    } else {
      json[r'demo'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'features'] = this.features;
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.useCase != null) {
      json[r'useCase'] = this.useCase;
    } else {
      json[r'useCase'] = null;
    }
      json[r'variants'] = this.variants;
    return json;
  }

  /// Returns a new [StarterKit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StarterKit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StarterKit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StarterKit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StarterKit(
        category: mapValueOfType<String>(json, r'category'),
        demo: mapValueOfType<String>(json, r'demo'),
        description: mapValueOfType<String>(json, r'description'),
        features: json[r'features'] is Iterable
            ? (json[r'features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        framework: mapValueOfType<String>(json, r'framework'),
        org: mapValueOfType<String>(json, r'org'),
        preview: mapValueOfType<String>(json, r'preview'),
        rating: num.parse('${json[r'rating']}'),
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
        tier: mapValueOfType<int>(json, r'tier'),
        title: mapValueOfType<String>(json, r'title'),
        useCase: mapValueOfType<String>(json, r'useCase'),
        variants: Variant.listFromJson(json[r'variants']),
      );
    }
    return null;
  }

  static List<StarterKit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StarterKit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StarterKit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StarterKit> mapFromJson(dynamic json) {
    final map = <String, StarterKit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StarterKit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StarterKit-objects as value to a dart map
  static Map<String, List<StarterKit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StarterKit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StarterKit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

