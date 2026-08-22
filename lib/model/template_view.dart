//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TemplateView {
  /// Returns a new [TemplateView] instance.
  TemplateView({
    this.category,
    this.counselReview,
    this.fields = const [],
    this.id,
    this.origin,
    this.title,
    this.version,
  });
  /// Category is the corporate need the template serves: formation, equity, ops or sales. Formation and equity are the securities-class categories, which is what forces counselReview.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// CounselReview marks a template whose rendered documents open with the counsel notice. True for every formation and equity template whatever an override sends: the engine prepends the notice and no caller can suppress it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? counselReview;

  /// Fields declares the merge fields the body consumes — every key a generation must supply, each with its human label. All are REQUIRED: a missing one is refused rather than rendered as a blank into a contract.
  List<Field> fields;

  /// ID is the template's stable id and the path segment that fetches its body — \"nda\", \"msa\", \"safe\". An override keeps the built-in's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Origin is \"builtin\" for a template the platform ships or \"org\" for one this org saved. It separates the catalog every tenant sees from this tenant's own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  /// Title is the display name, e.g. \"Mutual Non-Disclosure Agreement\". A generated document inherits it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Version is which version of this template the caller's org resolves to. A built-in is version 1; the org's first override is 2 and each save increments, so an override version never collides with the built-in's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateView &&
    other.category == category &&
    other.counselReview == counselReview &&
    _deepEquality.equals(other.fields, fields) &&
    other.id == id &&
    other.origin == origin &&
    other.title == title &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (counselReview == null ? 0 : counselReview!.hashCode) +
    (fields.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'TemplateView[category=$category, counselReview=$counselReview, fields=$fields, id=$id, origin=$origin, title=$title, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.counselReview != null) {
      json[r'counselReview'] = this.counselReview;
    } else {
      json[r'counselReview'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.origin != null) {
      json[r'origin'] = this.origin;
    } else {
      json[r'origin'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [TemplateView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateView(
        category: mapValueOfType<String>(json, r'category'),
        counselReview: mapValueOfType<bool>(json, r'counselReview'),
        fields: Field.listFromJson(json[r'fields']),
        id: mapValueOfType<String>(json, r'id'),
        origin: mapValueOfType<String>(json, r'origin'),
        title: mapValueOfType<String>(json, r'title'),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<TemplateView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateView> mapFromJson(dynamic json) {
    final map = <String, TemplateView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateView-objects as value to a dart map
  static Map<String, List<TemplateView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

