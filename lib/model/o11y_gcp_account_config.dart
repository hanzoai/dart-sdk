//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yGCPAccountConfig {
  /// Returns a new [O11yGCPAccountConfig] instance.
  O11yGCPAccountConfig({
    this.deploymentProjectId,
    this.deploymentRegion,
    this.projectIds = const [],
  });

  /// Project ID where central pub/sub for logs exist
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentProjectId;

  /// Project ID where otel collector will be deployed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentRegion;

  /// List of project IDs to monitor
  List<String> projectIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yGCPAccountConfig &&
    other.deploymentProjectId == deploymentProjectId &&
    other.deploymentRegion == deploymentRegion &&
    _deepEquality.equals(other.projectIds, projectIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deploymentProjectId == null ? 0 : deploymentProjectId!.hashCode) +
    (deploymentRegion == null ? 0 : deploymentRegion!.hashCode) +
    (projectIds.hashCode);

  @override
  String toString() => 'O11yGCPAccountConfig[deploymentProjectId=$deploymentProjectId, deploymentRegion=$deploymentRegion, projectIds=$projectIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deploymentProjectId != null) {
      json[r'deploymentProjectId'] = this.deploymentProjectId;
    } else {
      json[r'deploymentProjectId'] = null;
    }
    if (this.deploymentRegion != null) {
      json[r'deploymentRegion'] = this.deploymentRegion;
    } else {
      json[r'deploymentRegion'] = null;
    }
      json[r'projectIds'] = this.projectIds;
    return json;
  }

  /// Returns a new [O11yGCPAccountConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yGCPAccountConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yGCPAccountConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yGCPAccountConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yGCPAccountConfig(
        deploymentProjectId: mapValueOfType<String>(json, r'deploymentProjectId'),
        deploymentRegion: mapValueOfType<String>(json, r'deploymentRegion'),
        projectIds: json[r'projectIds'] is Iterable
            ? (json[r'projectIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<O11yGCPAccountConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yGCPAccountConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yGCPAccountConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yGCPAccountConfig> mapFromJson(dynamic json) {
    final map = <String, O11yGCPAccountConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yGCPAccountConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yGCPAccountConfig-objects as value to a dart map
  static Map<String, List<O11yGCPAccountConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yGCPAccountConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yGCPAccountConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

