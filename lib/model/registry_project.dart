//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RegistryProject {
  /// Returns a new [RegistryProject] instance.
  RegistryProject({
    this.images,
    this.packages,
    this.project,
  });

  /// Images is how many of the org's repositories the OCI catalog holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? images;

  /// Packages is how many of the org's packages the npm registry reports.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? packages;

  /// Project is the namespace: the org's slug, which prefixes its image names and scopes its npm packages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistryProject &&
    other.images == images &&
    other.packages == packages &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (images == null ? 0 : images!.hashCode) +
    (packages == null ? 0 : packages!.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'RegistryProject[images=$images, packages=$packages, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.images != null) {
      json[r'images'] = this.images;
    } else {
      json[r'images'] = null;
    }
    if (this.packages != null) {
      json[r'packages'] = this.packages;
    } else {
      json[r'packages'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [RegistryProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistryProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistryProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryProject(
        images: mapValueOfType<int>(json, r'images'),
        packages: mapValueOfType<int>(json, r'packages'),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<RegistryProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegistryProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryProject> mapFromJson(dynamic json) {
    final map = <String, RegistryProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryProject-objects as value to a dart map
  static Map<String, List<RegistryProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegistryProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

