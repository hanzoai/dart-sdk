//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesProjectCreate {
  /// Returns a new [PagesProjectCreate] instance.
  PagesProjectCreate({
    this.buildConfig,
    this.deploymentConfigs,
    this.name,
    this.productionBranch,
  });
  /// BuildConfig says how to build the site. Omitted means no build step.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PagesBuildConfig? buildConfig;

  /// DeploymentConfigs carries the preview and production runtime configs — the bindings and variables the built site's functions run with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PagesDeploymentConfigs? deploymentConfigs;

  /// Name is the project name, and it is also the address: the site answers at <name>.pages.dev. Cloudflare will not rename a project afterwards.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ProductionBranch is which git branch builds to production; every other branch builds a preview. Omitted leaves Cloudflare's own default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productionBranch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesProjectCreate &&
    other.buildConfig == buildConfig &&
    other.deploymentConfigs == deploymentConfigs &&
    other.name == name &&
    other.productionBranch == productionBranch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildConfig == null ? 0 : buildConfig!.hashCode) +
    (deploymentConfigs == null ? 0 : deploymentConfigs!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (productionBranch == null ? 0 : productionBranch!.hashCode);

  @override
  String toString() => 'PagesProjectCreate[buildConfig=$buildConfig, deploymentConfigs=$deploymentConfigs, name=$name, productionBranch=$productionBranch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buildConfig != null) {
      json[r'build_config'] = this.buildConfig;
    } else {
      json[r'build_config'] = null;
    }
    if (this.deploymentConfigs != null) {
      json[r'deployment_configs'] = this.deploymentConfigs;
    } else {
      json[r'deployment_configs'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.productionBranch != null) {
      json[r'production_branch'] = this.productionBranch;
    } else {
      json[r'production_branch'] = null;
    }
    return json;
  }

  /// Returns a new [PagesProjectCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesProjectCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesProjectCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesProjectCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesProjectCreate(
        buildConfig: PagesBuildConfig.fromJson(json[r'build_config']),
        deploymentConfigs: PagesDeploymentConfigs.fromJson(json[r'deployment_configs']),
        name: mapValueOfType<String>(json, r'name'),
        productionBranch: mapValueOfType<String>(json, r'production_branch'),
      );
    }
    return null;
  }

  static List<PagesProjectCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesProjectCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesProjectCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesProjectCreate> mapFromJson(dynamic json) {
    final map = <String, PagesProjectCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesProjectCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesProjectCreate-objects as value to a dart map
  static Map<String, List<PagesProjectCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesProjectCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesProjectCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

