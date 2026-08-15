//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class DeployReq {
  /// Returns a new [DeployReq] instance.
  DeployReq({
    this.app,
    this.commit,
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

  /// Commit is the git commit or ref to build, for a git-source app. Defaults to the app's branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  /// Project is the project the application lives under, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// Tag is the image tag to deploy, for an image-source app. Defaults to the app's tag, then `latest`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeployReq &&
    other.app == app &&
    other.commit == commit &&
    other.project == project &&
    other.tag == tag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (tag == null ? 0 : tag!.hashCode);

  @override
  String toString() => 'DeployReq[app=$app, commit=$commit, project=$project, tag=$tag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
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

  /// Returns a new [DeployReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeployReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeployReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeployReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeployReq(
        app: mapValueOfType<String>(json, r'app'),
        commit: mapValueOfType<String>(json, r'commit'),
        project: mapValueOfType<String>(json, r'project'),
        tag: mapValueOfType<String>(json, r'tag'),
      );
    }
    return null;
  }

  static List<DeployReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeployReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeployReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeployReq> mapFromJson(dynamic json) {
    final map = <String, DeployReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeployReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeployReq-objects as value to a dart map
  static Map<String, List<DeployReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeployReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeployReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

