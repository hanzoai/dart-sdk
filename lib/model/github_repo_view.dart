//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubRepoView {
  /// Returns a new [GithubRepoView] instance.
  GithubRepoView({
    this.defaultBranch,
    this.fullName,
    this.htmlUrl,
    this.imported,
    this.lastSyncedAt,
    this.name,
    this.private,
    this.syncStatus,
  });

  /// DefaultBranch is the repo's default branch at GitHub.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  /// FullName is GitHub's owner/name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  /// HTMLURL is the repo's page at GitHub.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  /// Imported is whether this repo has been mirrored into git.hanzo.ai.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? imported;

  /// LastSyncedAt is the last successful mirror, RFC 3339 UTC. Absent if never.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastSyncedAt;

  /// Name is the repository's short name within the installation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Private is GitHub's visibility bit for the repo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// SyncStatus is \"synced\", \"conflict\", or \"\" when the repo is not imported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? syncStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubRepoView &&
    other.defaultBranch == defaultBranch &&
    other.fullName == fullName &&
    other.htmlUrl == htmlUrl &&
    other.imported == imported &&
    other.lastSyncedAt == lastSyncedAt &&
    other.name == name &&
    other.private == private &&
    other.syncStatus == syncStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (imported == null ? 0 : imported!.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (syncStatus == null ? 0 : syncStatus!.hashCode);

  @override
  String toString() => 'GithubRepoView[defaultBranch=$defaultBranch, fullName=$fullName, htmlUrl=$htmlUrl, imported=$imported, lastSyncedAt=$lastSyncedAt, name=$name, private=$private, syncStatus=$syncStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultBranch != null) {
      json[r'defaultBranch'] = this.defaultBranch;
    } else {
      json[r'defaultBranch'] = null;
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
    if (this.imported != null) {
      json[r'imported'] = this.imported;
    } else {
      json[r'imported'] = null;
    }
    if (this.lastSyncedAt != null) {
      json[r'lastSyncedAt'] = this.lastSyncedAt;
    } else {
      json[r'lastSyncedAt'] = null;
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
    if (this.syncStatus != null) {
      json[r'syncStatus'] = this.syncStatus;
    } else {
      json[r'syncStatus'] = null;
    }
    return json;
  }

  /// Returns a new [GithubRepoView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubRepoView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubRepoView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubRepoView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubRepoView(
        defaultBranch: mapValueOfType<String>(json, r'defaultBranch'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        htmlUrl: mapValueOfType<String>(json, r'htmlUrl'),
        imported: mapValueOfType<bool>(json, r'imported'),
        lastSyncedAt: mapValueOfType<String>(json, r'lastSyncedAt'),
        name: mapValueOfType<String>(json, r'name'),
        private: mapValueOfType<bool>(json, r'private'),
        syncStatus: mapValueOfType<String>(json, r'syncStatus'),
      );
    }
    return null;
  }

  static List<GithubRepoView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubRepoView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubRepoView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubRepoView> mapFromJson(dynamic json) {
    final map = <String, GithubRepoView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubRepoView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubRepoView-objects as value to a dart map
  static Map<String, List<GithubRepoView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubRepoView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubRepoView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

