//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesBuildOut {
  /// Returns a new [GithubPagesBuildOut] instance.
  GithubPagesBuildOut({
    this.repo,
    this.status,
    this.url,
  });
  /// Repo is the repository the build was queued for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Status is GitHub's build state at the moment it was queued (\"queued\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// URL is GitHub's API URL for the build, for polling it there.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesBuildOut &&
    other.repo == repo &&
    other.status == status &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (repo == null ? 0 : repo!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'GithubPagesBuildOut[repo=$repo, status=$status, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
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

  /// Returns a new [GithubPagesBuildOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesBuildOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesBuildOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesBuildOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesBuildOut(
        repo: mapValueOfType<String>(json, r'repo'),
        status: mapValueOfType<String>(json, r'status'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<GithubPagesBuildOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesBuildOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesBuildOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesBuildOut> mapFromJson(dynamic json) {
    final map = <String, GithubPagesBuildOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesBuildOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesBuildOut-objects as value to a dart map
  static Map<String, List<GithubPagesBuildOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesBuildOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesBuildOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

