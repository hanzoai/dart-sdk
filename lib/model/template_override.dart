//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TemplateOverride {
  /// Returns a new [TemplateOverride] instance.
  TemplateOverride({
    this.body,
    this.category,
    this.counselReview,
    this.fields = const [],
    this.id,
    this.title,
  });

  /// Body is the text/template source. Required. Every {{.key}} it references must be declared in Fields, or the save is refused rather than rendering a blank into a contract later.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// Category groups the template: formation, equity, ops or sales. Optional when overriding a built-in, which supplies its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// CounselReview marks a template whose documents must carry the counsel notice. It can be raised but never lowered: a formation or equity template is always counsel-review, and an override of a counsel-review built-in stays one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? counselReview;

  /// Fields declares the merge fields the body consumes. Every declared field is REQUIRED at generation — the engine fails closed on a missing one.
  List<Field> fields;

  /// ID is the template to override, from the path. Overriding a built-in id inherits that built-in's category, title and counsel-review posture.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Title is the template's display name. Required unless a built-in supplies it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateOverride &&
    other.body == body &&
    other.category == category &&
    other.counselReview == counselReview &&
    _deepEquality.equals(other.fields, fields) &&
    other.id == id &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body == null ? 0 : body!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (counselReview == null ? 0 : counselReview!.hashCode) +
    (fields.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'TemplateOverride[body=$body, category=$category, counselReview=$counselReview, fields=$fields, id=$id, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [TemplateOverride] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateOverride? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateOverride[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateOverride[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateOverride(
        body: mapValueOfType<String>(json, r'body'),
        category: mapValueOfType<String>(json, r'category'),
        counselReview: mapValueOfType<bool>(json, r'counselReview'),
        fields: Field.listFromJson(json[r'fields']),
        id: mapValueOfType<String>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<TemplateOverride> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateOverride>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateOverride.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateOverride> mapFromJson(dynamic json) {
    final map = <String, TemplateOverride>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateOverride.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateOverride-objects as value to a dart map
  static Map<String, List<TemplateOverride>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateOverride>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateOverride.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

