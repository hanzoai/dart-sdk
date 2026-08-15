//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubForkOut {
  /// Returns a new [GithubForkOut] instance.
  GithubForkOut({
    this.cloneUrl,
    this.defaultBranch,
    this.existing,
    this.fullName,
    this.htmlUrl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cloneUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultBranch;

  /// Existing reports that the fork was already there. GitHub answers 202 either way, so without this a caller cannot tell \"made you one\" from \"you had one\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? existing;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubForkOut &&
    other.cloneUrl == cloneUrl &&
    other.defaultBranch == defaultBranch &&
    other.existing == existing &&
    other.fullName == fullName &&
    other.htmlUrl == htmlUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cloneUrl == null ? 0 : cloneUrl!.hashCode) +
    (defaultBranch == null ? 0 : defaultBranch!.hashCode) +
    (existing == null ? 0 : existing!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode);

  @override
  String toString() => 'GithubForkOut[cloneUrl=$cloneUrl, defaultBranch=$defaultBranch, existing=$existing, fullName=$fullName, htmlUrl=$htmlUrl]';

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
    if (this.existing != null) {
      json[r'existing'] = this.existing;
    } else {
      json[r'existing'] = null;
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
    return json;
  }

  /// Returns a new [GithubForkOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubForkOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubForkOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubForkOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubForkOut(
        cloneUrl: mapValueOfType<String>(json, r'clone_url'),
        defaultBranch: mapValueOfType<String>(json, r'default_branch'),
        existing: mapValueOfType<bool>(json, r'existing'),
        fullName: mapValueOfType<String>(json, r'full_name'),
        htmlUrl: mapValueOfType<String>(json, r'html_url'),
      );
    }
    return null;
  }

  static List<GithubForkOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubForkOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubForkOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubForkOut> mapFromJson(dynamic json) {
    final map = <String, GithubForkOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubForkOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubForkOut-objects as value to a dart map
  static Map<String, List<GithubForkOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubForkOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubForkOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

