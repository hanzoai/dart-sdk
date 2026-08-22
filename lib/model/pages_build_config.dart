//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesBuildConfig {
  /// Returns a new [PagesBuildConfig] instance.
  PagesBuildConfig({
    this.buildCommand,
    this.destinationDir,
    this.rootDir,
  });
  /// BuildCommand is what Cloudflare runs to build the site (\"npm run build\"). Omitted means no build step: the repository is published as it stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildCommand;

  /// DestinationDir is the directory the build leaves the site in (\"dist\"), relative to RootDir. It is what gets served.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationDir;

  /// RootDir is where in the repository the build runs, for a project that is not at the repository root. Omitted means the root.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rootDir;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesBuildConfig &&
    other.buildCommand == buildCommand &&
    other.destinationDir == destinationDir &&
    other.rootDir == rootDir;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildCommand == null ? 0 : buildCommand!.hashCode) +
    (destinationDir == null ? 0 : destinationDir!.hashCode) +
    (rootDir == null ? 0 : rootDir!.hashCode);

  @override
  String toString() => 'PagesBuildConfig[buildCommand=$buildCommand, destinationDir=$destinationDir, rootDir=$rootDir]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildCommand != null) {
      json[r'build_command'] = this.buildCommand;
    } else {
      json[r'build_command'] = null;
    }
    if (this.destinationDir != null) {
      json[r'destination_dir'] = this.destinationDir;
    } else {
      json[r'destination_dir'] = null;
    }
    if (this.rootDir != null) {
      json[r'root_dir'] = this.rootDir;
    } else {
      json[r'root_dir'] = null;
    }
    return json;
  }

  /// Returns a new [PagesBuildConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesBuildConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesBuildConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesBuildConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesBuildConfig(
        buildCommand: mapValueOfType<String>(json, r'build_command'),
        destinationDir: mapValueOfType<String>(json, r'destination_dir'),
        rootDir: mapValueOfType<String>(json, r'root_dir'),
      );
    }
    return null;
  }

  static List<PagesBuildConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesBuildConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesBuildConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesBuildConfig> mapFromJson(dynamic json) {
    final map = <String, PagesBuildConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesBuildConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesBuildConfig-objects as value to a dart map
  static Map<String, List<PagesBuildConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesBuildConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesBuildConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

