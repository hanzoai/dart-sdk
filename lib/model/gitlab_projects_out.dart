//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GitlabProjectsOut {
  /// Returns a new [GitlabProjectsOut] instance.
  GitlabProjectsOut({
    this.account,
    this.projects = const [],
  });
  /// Account is the connected GitLab username, so a client can label the list without a second call. Empty when the connection recorded none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Projects is every project the token reaches, newest activity first. Never null; [] when the account has none.
  List<GitlabProjectView> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitlabProjectsOut &&
    other.account == account &&
    _deepEquality.equals(other.projects, projects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (projects.hashCode);

  @override
  String toString() => 'GitlabProjectsOut[account=$account, projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
      json[r'projects'] = this.projects;
    return json;
  }

  /// Returns a new [GitlabProjectsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitlabProjectsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitlabProjectsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitlabProjectsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitlabProjectsOut(
        account: mapValueOfType<String>(json, r'account'),
        projects: GitlabProjectView.listFromJson(json[r'projects']),
      );
    }
    return null;
  }

  static List<GitlabProjectsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitlabProjectsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitlabProjectsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitlabProjectsOut> mapFromJson(dynamic json) {
    final map = <String, GitlabProjectsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitlabProjectsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitlabProjectsOut-objects as value to a dart map
  static Map<String, List<GitlabProjectsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitlabProjectsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitlabProjectsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

