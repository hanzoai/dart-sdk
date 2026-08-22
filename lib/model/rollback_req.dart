//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RollbackReq {
  /// Returns a new [RollbackReq] instance.
  RollbackReq({
    this.app,
    this.deploymentId,
    this.project,
  });
  /// App is the application's slug, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// DeploymentID is the deployment to redeploy. Omit it to return to the previous release.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentId;

  /// Project is the project the application lives under, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RollbackReq &&
    other.app == app &&
    other.deploymentId == deploymentId &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'RollbackReq[app=$app, deploymentId=$deploymentId, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [RollbackReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RollbackReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RollbackReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RollbackReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RollbackReq(
        app: mapValueOfType<String>(json, r'app'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<RollbackReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RollbackReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RollbackReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RollbackReq> mapFromJson(dynamic json) {
    final map = <String, RollbackReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RollbackReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RollbackReq-objects as value to a dart map
  static Map<String, List<RollbackReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RollbackReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RollbackReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

