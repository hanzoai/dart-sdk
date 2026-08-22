//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PublishKitIn {
  /// Returns a new [PublishKitIn] instance.
  PublishKitIn({
    this.category,
    this.demo,
    this.description,
    this.features = const [],
    this.framework,
    this.preview,
    this.slug,
    this.source_,
    this.title,
    this.useCase,
    this.variants = const [],
  });
  /// Category groups the kit in the gallery browser.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Demo is the deployed site itself, when there is one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? demo;

  /// Description is the browse-card blurb, max 4096 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Features are the highlights the card lists, at most 32.
  List<String> features;

  /// Framework is the stack the kit is built on (\"Next.js 14\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// Preview is the still image the browse card renders, max 4096 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preview;

  /// Slug is the kit's identity — lowercase alphanumeric with dashes, max 40.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Source is the repository the kit is forked from, max 4096 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Title is the display name. Required, max 200 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UseCase is what the kit is for, in a phrase.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? useCase;

  /// Variants are the shapes this kit ships in, at most 32; the fork picks one.
  List<Variant> variants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublishKitIn &&
    other.category == category &&
    other.demo == demo &&
    other.description == description &&
    _deepEquality.equals(other.features, features) &&
    other.framework == framework &&
    other.preview == preview &&
    other.slug == slug &&
    other.source_ == source_ &&
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
    (preview == null ? 0 : preview!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (useCase == null ? 0 : useCase!.hashCode) +
    (variants.hashCode);

  @override
  String toString() => 'PublishKitIn[category=$category, demo=$demo, description=$description, features=$features, framework=$framework, preview=$preview, slug=$slug, source_=$source_, title=$title, useCase=$useCase, variants=$variants]';

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
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
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

  /// Returns a new [PublishKitIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublishKitIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublishKitIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublishKitIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublishKitIn(
        category: mapValueOfType<String>(json, r'category'),
        demo: mapValueOfType<String>(json, r'demo'),
        description: mapValueOfType<String>(json, r'description'),
        features: json[r'features'] is Iterable
            ? (json[r'features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        framework: mapValueOfType<String>(json, r'framework'),
        preview: mapValueOfType<String>(json, r'preview'),
        slug: mapValueOfType<String>(json, r'slug'),
        source_: mapValueOfType<String>(json, r'source'),
        title: mapValueOfType<String>(json, r'title'),
        useCase: mapValueOfType<String>(json, r'useCase'),
        variants: Variant.listFromJson(json[r'variants']),
      );
    }
    return null;
  }

  static List<PublishKitIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublishKitIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublishKitIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublishKitIn> mapFromJson(dynamic json) {
    final map = <String, PublishKitIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublishKitIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublishKitIn-objects as value to a dart map
  static Map<String, List<PublishKitIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublishKitIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublishKitIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

