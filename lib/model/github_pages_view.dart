//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesView {
  /// Returns a new [GithubPagesView] instance.
  GithubPagesView({
    this.buildType,
    this.cname,
    this.custom404,
    this.httpsEnforced,
    this.repo,
    this.source_,
    this.status,
    this.url,
  });

  /// BuildType is the builder in use: \"legacy\" (branch source) or \"workflow\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildType;

  /// CNAME is the custom domain, absent when none is set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cname;

  /// Custom404 is whether the repo ships its own 404 page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? custom404;

  /// HTTPSEnforced is GitHub's enforce-HTTPS bit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? httpsEnforced;

  /// Repo is the repository the site belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Source is the branch + path the site builds from. Absent under \"workflow\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GithubPagesSource? source_;

  /// Status is GitHub's build state: \"built\", \"building\" or \"errored\". Absent before the first build.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// URL is the live site (GitHub's html_url).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesView &&
    other.buildType == buildType &&
    other.cname == cname &&
    other.custom404 == custom404 &&
    other.httpsEnforced == httpsEnforced &&
    other.repo == repo &&
    other.source_ == source_ &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buildType == null ? 0 : buildType!.hashCode) +
    (cname == null ? 0 : cname!.hashCode) +
    (custom404 == null ? 0 : custom404!.hashCode) +
    (httpsEnforced == null ? 0 : httpsEnforced!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'GithubPagesView[buildType=$buildType, cname=$cname, custom404=$custom404, httpsEnforced=$httpsEnforced, repo=$repo, source_=$source_, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.custom404 != null) {
      json[r'custom404'] = this.custom404;
    } else {
      json[r'custom404'] = null;
    }
    if (this.httpsEnforced != null) {
      json[r'httpsEnforced'] = this.httpsEnforced;
    } else {
      json[r'httpsEnforced'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [GithubPagesView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesView(
        buildType: mapValueOfType<String>(json, r'buildType'),
        cname: mapValueOfType<String>(json, r'cname'),
        custom404: mapValueOfType<bool>(json, r'custom404'),
        httpsEnforced: mapValueOfType<bool>(json, r'httpsEnforced'),
        repo: mapValueOfType<String>(json, r'repo'),
        source_: GithubPagesSource.fromJson(json[r'source']),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<GithubPagesView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesView> mapFromJson(dynamic json) {
    final map = <String, GithubPagesView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesView-objects as value to a dart map
  static Map<String, List<GithubPagesView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

