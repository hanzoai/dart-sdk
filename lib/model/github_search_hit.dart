//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubSearchHit {
  /// Returns a new [GithubSearchHit] instance.
  GithubSearchHit({
    this.cloneUrl,
    this.defaultBranch,
    this.description,
    this.fullName,
    this.htmlUrl,
    this.language,
    this.private,
    this.stars,
  });
  /// CloneURL is the repository's https git remote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  /// DefaultBranch is the branch a clone checks out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  /// Description is the blurb the repository's owner wrote. Empty when it has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// FullName is the repository's \"owner/repo\" on GitHub. Finding it here does NOT make it forkable: githubFork takes a repo the org's installation was granted, and a hit from the public index usually is not one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  /// HTMLURL is the repository's page on github.com.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  /// Language is the primary language GitHub detected from the file mix (\"Go\", \"TypeScript\"). Empty when GitHub attributes none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Private is GitHub's visibility flag, passed through. This op reads the public index — the org's token only charges the rate limit to the installation — so it is false for everything a search can reach.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? private;

  /// Stars is GitHub's stargazers_count as the SEARCH INDEX held it when the query ran — a snapshot, not a live count off the repository.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stars;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubSearchHit &&
    other.cloneUrl == cloneUrl &&
    other.defaultBranch == defaultBranch &&
    other.description == description &&
    other.fullName == fullName &&
    other.htmlUrl == htmlUrl &&
    other.language == language &&
    other.private == private &&
    other.stars == stars;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (private == null ? 0 : private!.hashCode) +
    (stars == null ? 0 : stars!.hashCode);

  @override
  String toString() => 'GithubSearchHit[cloneUrl=$cloneUrl, defaultBranch=$defaultBranch, description=$description, fullName=$fullName, htmlUrl=$htmlUrl, language=$language, private=$private, stars=$stars]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cloneUrl != null) {
      json[r'clone_url'] = this.cloneUrl;
    } else {
      json[r'clone_url'] = null;
    }
    if (this.defaultBranch != null) {
      json[r'default_branch'] = this.defaultBranch;
    } else {
      json[r'default_branch'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.fullName != null) {
      json[r'full_name'] = this.fullName;
    } else {
      json[r'full_name'] = null;
    }
    if (this.htmlUrl != null) {
      json[r'html_url'] = this.htmlUrl;
    } else {
      json[r'html_url'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.private != null) {
      json[r'private'] = this.private;
    } else {
      json[r'private'] = null;
    }
    if (this.stars != null) {
      json[r'stars'] = this.stars;
    } else {
      json[r'stars'] = null;
    }
    return json;
  }

  /// Returns a new [GithubSearchHit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubSearchHit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubSearchHit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubSearchHit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubSearchHit(
        cloneUrl: mapValueOfType<String>(json, r'clone_url'),
        defaultBranch: mapValueOfType<String>(json, r'default_branch'),
        description: mapValueOfType<String>(json, r'description'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        htmlUrl: mapValueOfType<String>(json, r'html_url'),
        language: mapValueOfType<String>(json, r'language'),
        private: mapValueOfType<bool>(json, r'private'),
        stars: mapValueOfType<int>(json, r'stars'),
      );
    }
    return null;
  }

  static List<GithubSearchHit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubSearchHit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubSearchHit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubSearchHit> mapFromJson(dynamic json) {
    final map = <String, GithubSearchHit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubSearchHit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubSearchHit-objects as value to a dart map
  static Map<String, List<GithubSearchHit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubSearchHit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubSearchHit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

