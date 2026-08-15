//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesUpdateReq {
  /// Returns a new [GithubPagesUpdateReq] instance.
  GithubPagesUpdateReq({
    this.branch,
    this.buildType,
    this.cname,
    this.httpsEnforced,
    this.path,
    this.repo,
  });

  /// Branch switches the legacy source branch. Empty leaves the source alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// BuildType switches the builder: \"legacy\" or \"workflow\". Empty leaves it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  /// CNAME is the custom domain. Omit to leave it alone, \"\" to clear it, or a valid FQDN to set it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cname;

  /// HTTPSEnforced toggles GitHub's enforce-HTTPS bit. Omit to leave it alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? httpsEnforced;

  /// Path is the source directory to pair with Branch: \"/\" (the default) or \"/docs\". Read only when Branch is given.
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
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesUpdateReq &&
    other.branch == branch &&
    other.buildType == buildType &&
    other.cname == cname &&
    other.httpsEnforced == httpsEnforced &&
    other.path == path &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (buildType == null ? 0 : buildType!.hashCode) +
    (cname == null ? 0 : cname!.hashCode) +
    (httpsEnforced == null ? 0 : httpsEnforced!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'GithubPagesUpdateReq[branch=$branch, buildType=$buildType, cname=$cname, httpsEnforced=$httpsEnforced, path=$path, repo=$repo]';

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
    if (this.cname != null) {
      json[r'cname'] = this.cname;
    } else {
      json[r'cname'] = null;
    }
    if (this.httpsEnforced != null) {
      json[r'httpsEnforced'] = this.httpsEnforced;
    } else {
      json[r'httpsEnforced'] = null;
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

  /// Returns a new [GithubPagesUpdateReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesUpdateReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesUpdateReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesUpdateReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesUpdateReq(
        branch: mapValueOfType<String>(json, r'branch'),
        buildType: mapValueOfType<String>(json, r'buildType'),
        cname: mapValueOfType<String>(json, r'cname'),
        httpsEnforced: mapValueOfType<bool>(json, r'httpsEnforced'),
        path: mapValueOfType<String>(json, r'path'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<GithubPagesUpdateReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesUpdateReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesUpdateReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesUpdateReq> mapFromJson(dynamic json) {
    final map = <String, GithubPagesUpdateReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesUpdateReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesUpdateReq-objects as value to a dart map
  static Map<String, List<GithubPagesUpdateReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesUpdateReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesUpdateReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

