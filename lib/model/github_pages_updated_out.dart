//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesUpdatedOut {
  /// Returns a new [GithubPagesUpdatedOut] instance.
  GithubPagesUpdatedOut({
    this.repo,
    this.updated,
  });

  /// Repo is the repository that was updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// Updated is always true — a failure is an HTTP error, never this shape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesUpdatedOut &&
    other.repo == repo &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (repo == null ? 0 : repo!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'GithubPagesUpdatedOut[repo=$repo, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [GithubPagesUpdatedOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesUpdatedOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesUpdatedOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesUpdatedOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesUpdatedOut(
        repo: mapValueOfType<String>(json, r'repo'),
        updated: mapValueOfType<bool>(json, r'updated'),
      );
    }
    return null;
  }

  static List<GithubPagesUpdatedOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesUpdatedOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesUpdatedOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesUpdatedOut> mapFromJson(dynamic json) {
    final map = <String, GithubPagesUpdatedOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesUpdatedOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesUpdatedOut-objects as value to a dart map
  static Map<String, List<GithubPagesUpdatedOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesUpdatedOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesUpdatedOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

