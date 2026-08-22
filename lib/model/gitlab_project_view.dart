//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GitlabProjectView {
  /// Returns a new [GitlabProjectView] instance.
  GitlabProjectView({
    this.cloneUrl,
    this.defaultBranch,
    this.description,
    this.fullName,
    this.htmlUrl,
    this.name,
    this.private,
    this.pushedAt,
  });
  /// CloneURL is the https remote to clone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  /// DefaultBranch is the branch a clone lands on (\"main\" when GitLab names none, which is what an empty project reports).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  /// Description is the project's own, empty when it has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// FullName is the namespace path (\"acme/widgets\", \"acme/team/widgets\" for a subgroup) — the string GitLab calls path_with_namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  /// HTMLURL is the project's page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  /// Name is the project's path segment (\"widgets\"), not its display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Private is true for anything not publicly visible (private or internal).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// PushedAt is RFC3339 last activity, so a client can sort or say \"2h ago\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pushedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitlabProjectView &&
    other.cloneUrl == cloneUrl &&
    other.defaultBranch == defaultBranch &&
    other.description == description &&
    other.fullName == fullName &&
    other.htmlUrl == htmlUrl &&
    other.name == name &&
    other.private == private &&
    other.pushedAt == pushedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (pushedAt == null ? 0 : pushedAt!.hashCode);

  @override
  String toString() => 'GitlabProjectView[cloneUrl=$cloneUrl, defaultBranch=$defaultBranch, description=$description, fullName=$fullName, htmlUrl=$htmlUrl, name=$name, private=$private, pushedAt=$pushedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cloneUrl != null) {
      json[r'cloneUrl'] = this.cloneUrl;
    } else {
      json[r'cloneUrl'] = null;
    }
    if (this.defaultBranch != null) {
      json[r'defaultBranch'] = this.defaultBranch;
    } else {
      json[r'defaultBranch'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.htmlUrl != null) {
      json[r'htmlUrl'] = this.htmlUrl;
    } else {
      json[r'htmlUrl'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    if (this.pushedAt != null) {
      json[r'pushedAt'] = this.pushedAt;
    } else {
      json[r'pushedAt'] = null;
    }
    return json;
  }

  /// Returns a new [GitlabProjectView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitlabProjectView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitlabProjectView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitlabProjectView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitlabProjectView(
        cloneUrl: mapValueOfType<String>(json, r'cloneUrl'),
        defaultBranch: mapValueOfType<String>(json, r'defaultBranch'),
        description: mapValueOfType<String>(json, r'description'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        htmlUrl: mapValueOfType<String>(json, r'htmlUrl'),
        name: mapValueOfType<String>(json, r'name'),
        private: mapValueOfType<bool>(json, r'private'),
        pushedAt: mapValueOfType<String>(json, r'pushedAt'),
      );
    }
    return null;
  }

  static List<GitlabProjectView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitlabProjectView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitlabProjectView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitlabProjectView> mapFromJson(dynamic json) {
    final map = <String, GitlabProjectView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitlabProjectView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitlabProjectView-objects as value to a dart map
  static Map<String, List<GitlabProjectView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitlabProjectView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitlabProjectView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

