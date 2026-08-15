//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class LegalTemplate {
  /// Returns a new [LegalTemplate] instance.
  LegalTemplate({
    this.body,
    this.category,
    this.counselReview,
    this.fields = const [],
    this.id,
    this.origin,
    this.title,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? counselReview;

  List<Field> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? origin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LegalTemplate &&
    other.body == body &&
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
    (body == null ? 0 : body!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (counselReview == null ? 0 : counselReview!.hashCode) +
    (fields.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (origin == null ? 0 : origin!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'LegalTemplate[body=$body, category=$category, counselReview=$counselReview, fields=$fields, id=$id, origin=$origin, title=$title, version=$version]';

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

  /// Returns a new [LegalTemplate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LegalTemplate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LegalTemplate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LegalTemplate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LegalTemplate(
        body: mapValueOfType<String>(json, r'body'),
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

  static List<LegalTemplate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LegalTemplate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LegalTemplate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LegalTemplate> mapFromJson(dynamic json) {
    final map = <String, LegalTemplate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LegalTemplate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LegalTemplate-objects as value to a dart map
  static Map<String, List<LegalTemplate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LegalTemplate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LegalTemplate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

