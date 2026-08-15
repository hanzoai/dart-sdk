//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11ySentryPostableProject {
  /// Returns a new [O11yO11ySentryPostableProject] instance.
  O11yO11ySentryPostableProject({
    required this.name,
    this.platform,
    this.slug,
  });

  /// Name is the project's display name. Required.
  String name;

  /// Platform is the reporting runtime, e.g. go, python, javascript.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Slug is the project's short name. Server-assigned from Name when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11ySentryPostableProject &&
    other.name == name &&
    other.platform == platform &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'O11yO11ySentryPostableProject[name=$name, platform=$platform, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11ySentryPostableProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11ySentryPostableProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11ySentryPostableProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11ySentryPostableProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11ySentryPostableProject(
        name: mapValueOfType<String>(json, r'name')!,
        platform: mapValueOfType<String>(json, r'platform'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<O11yO11ySentryPostableProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11ySentryPostableProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11ySentryPostableProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11ySentryPostableProject> mapFromJson(dynamic json) {
    final map = <String, O11yO11ySentryPostableProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11ySentryPostableProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11ySentryPostableProject-objects as value to a dart map
  static Map<String, List<O11yO11ySentryPostableProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11ySentryPostableProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11ySentryPostableProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

