//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesSource {
  /// Returns a new [GithubPagesSource] instance.
  GithubPagesSource({
    this.branch,
    this.path,
  });
  /// Branch is the branch the site builds from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? branch;

  /// Path is the directory within that branch: \"/\" or \"/docs\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesSource &&
    other.branch == branch &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branch == null ? 0 : branch!.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'GithubPagesSource[branch=$branch, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.branch != null) {
      json[r'branch'] = this.branch;
    } else {
      json[r'branch'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    return json;
  }

  /// Returns a new [GithubPagesSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesSource(
        branch: mapValueOfType<String>(json, r'branch'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<GithubPagesSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesSource> mapFromJson(dynamic json) {
    final map = <String, GithubPagesSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesSource-objects as value to a dart map
  static Map<String, List<GithubPagesSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

