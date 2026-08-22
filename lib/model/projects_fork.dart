//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProjectsFork {
  /// Returns a new [ProjectsFork] instance.
  ProjectsFork({
    this.name,
    this.slug,
    this.target,
    this.variant,
  });
  /// target project name (optional; defaults to the parent's title)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// parent slug to fork — catalog template or published project (required)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Target overrides the derived project slug (optional; defaults to the parent slug). Kept distinct from Slug so callers can rename on fork.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Variant picks a template's format/page/theme (optional; defaults to the template's first shape). This is the axis the catalog used to spend sibling slugs on, so it is expressed here, where the user's preference is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsFork &&
    other.name == name &&
    other.slug == slug &&
    other.target == target &&
    other.variant == variant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (variant == null ? 0 : variant!.hashCode);

  @override
  String toString() => 'ProjectsFork[name=$name, slug=$slug, target=$target, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectsFork] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsFork? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectsFork[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectsFork[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectsFork(
        name: mapValueOfType<String>(json, r'name'),
        slug: mapValueOfType<String>(json, r'slug'),
        target: mapValueOfType<String>(json, r'target'),
        variant: mapValueOfType<String>(json, r'variant'),
      );
    }
    return null;
  }

  static List<ProjectsFork> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectsFork>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectsFork.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectsFork> mapFromJson(dynamic json) {
    final map = <String, ProjectsFork>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectsFork.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectsFork-objects as value to a dart map
  static Map<String, List<ProjectsFork>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectsFork>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectsFork.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

