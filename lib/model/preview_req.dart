//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PreviewReq {
  /// Returns a new [PreviewReq] instance.
  PreviewReq({
    this.app,
    this.branch,
    this.image,
    this.project,
  });

  /// App is the parent application's slug, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? app;

  /// Branch is the branch to preview; defaults to the parent app's branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Image is the already-built image ref to deploy. Required — a preview never builds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// Project is the project the parent application lives under, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PreviewReq &&
    other.app == app &&
    other.branch == branch &&
    other.image == image &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app == null ? 0 : app!.hashCode) +
    (branch == null ? 0 : branch!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'PreviewReq[app=$app, branch=$branch, image=$image, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.app != null) {
      json[r'app'] = this.app;
    } else {
      json[r'app'] = null;
    }
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [PreviewReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PreviewReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PreviewReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PreviewReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PreviewReq(
        app: mapValueOfType<String>(json, r'app'),
        branch: mapValueOfType<String>(json, r'branch'),
        image: mapValueOfType<String>(json, r'image'),
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<PreviewReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PreviewReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PreviewReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PreviewReq> mapFromJson(dynamic json) {
    final map = <String, PreviewReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PreviewReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PreviewReq-objects as value to a dart map
  static Map<String, List<PreviewReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PreviewReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PreviewReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

