//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesEnableReq {
  /// Returns a new [GithubPagesEnableReq] instance.
  GithubPagesEnableReq({
    this.branch,
    this.buildType,
    this.path,
    this.repo,
  });
  /// Branch is the legacy source branch; empty defaults to the repo's own default branch. Ignored when buildType is \"workflow\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// BuildType selects the builder: \"workflow\" builds via GitHub Actions, anything else builds from the branch source above.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  /// Path is the source directory within the branch: \"/\" (the default) or \"/docs\". GitHub allows no others.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Repo is the repository, from the :repo path segment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesEnableReq &&
    other.branch == branch &&
    other.buildType == buildType &&
    other.path == path &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (buildType == null ? 0 : buildType!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'GithubPagesEnableReq[branch=$branch, buildType=$buildType, path=$path, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.buildType != null) {
      json[r'buildType'] = this.buildType;
    } else {
      json[r'buildType'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [GithubPagesEnableReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesEnableReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesEnableReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesEnableReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesEnableReq(
        branch: mapValueOfType<String>(json, r'branch'),
        buildType: mapValueOfType<String>(json, r'buildType'),
        path: mapValueOfType<String>(json, r'path'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<GithubPagesEnableReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesEnableReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesEnableReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesEnableReq> mapFromJson(dynamic json) {
    final map = <String, GithubPagesEnableReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesEnableReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesEnableReq-objects as value to a dart map
  static Map<String, List<GithubPagesEnableReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesEnableReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesEnableReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

