//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PromoteReq {
  /// Returns a new [PromoteReq] instance.
  PromoteReq({
    this.app,
    this.deploymentId,
    this.project,
    this.tag,
  });
  /// App is the application's slug, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// DeploymentID promotes that deployment's exact built image. One of this and Tag is required.
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

  /// Tag promotes an image tag, resolved the same way a deploy resolves one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoteReq &&
    other.app == app &&
    other.deploymentId == deploymentId &&
    other.project == project &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'PromoteReq[app=$app, deploymentId=$deploymentId, project=$project, tag=$tag]';

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
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    return json;
  }

  /// Returns a new [PromoteReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PromoteReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PromoteReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PromoteReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PromoteReq(
        app: mapValueOfType<String>(json, r'app'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        project: mapValueOfType<String>(json, r'project'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<PromoteReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PromoteReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PromoteReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PromoteReq> mapFromJson(dynamic json) {
    final map = <String, PromoteReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PromoteReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PromoteReq-objects as value to a dart map
  static Map<String, List<PromoteReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PromoteReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PromoteReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

