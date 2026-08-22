//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Blog {
  /// Returns a new [Blog] instance.
  Blog({
    this.caseStudy,
    this.how,
    this.slug,
    this.title,
    this.why,
  });
  /// CaseStudy is one worked instance — somebody who ran it, and what happened.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caseStudy;

  /// How is the run book: the steps to execute the tactic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? how;

  /// Slug is the post's address — the last path segment it is published at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Title is the post's headline.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Why is the mechanism: the reason the tactic works, stated as a principle rather than as instructions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? why;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Blog &&
    other.caseStudy == caseStudy &&
    other.how == how &&
    other.slug == slug &&
    other.title == title &&
    other.why == why;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (caseStudy == null ? 0 : caseStudy!.hashCode) +
    (how == null ? 0 : how!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (why == null ? 0 : why!.hashCode);

  @override
  String toString() => 'Blog[caseStudy=$caseStudy, how=$how, slug=$slug, title=$title, why=$why]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.caseStudy != null) {
      json[r'caseStudy'] = this.caseStudy;
    } else {
      json[r'caseStudy'] = null;
    }
    if (this.how != null) {
      json[r'how'] = this.how;
    } else {
      json[r'how'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.why != null) {
      json[r'why'] = this.why;
    } else {
      json[r'why'] = null;
    }
    return json;
  }

  /// Returns a new [Blog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Blog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Blog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Blog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Blog(
        caseStudy: mapValueOfType<String>(json, r'caseStudy'),
        how: mapValueOfType<String>(json, r'how'),
        slug: mapValueOfType<String>(json, r'slug'),
        title: mapValueOfType<String>(json, r'title'),
        why: mapValueOfType<String>(json, r'why'),
      );
    }
    return null;
  }

  static List<Blog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Blog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Blog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Blog> mapFromJson(dynamic json) {
    final map = <String, Blog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Blog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Blog-objects as value to a dart map
  static Map<String, List<Blog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Blog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Blog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

