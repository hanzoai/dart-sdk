//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubPagesDisabledOut {
  /// Returns a new [GithubPagesDisabledOut] instance.
  GithubPagesDisabledOut({
    this.disabled,
    this.repo,
  });
  /// Disabled is always true — a failure is an HTTP error, never this shape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disabled;

  /// Repo is the repository whose site was deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubPagesDisabledOut &&
    other.disabled == disabled &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disabled == null ? 0 : disabled!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'GithubPagesDisabledOut[disabled=$disabled, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [GithubPagesDisabledOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubPagesDisabledOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubPagesDisabledOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubPagesDisabledOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubPagesDisabledOut(
        disabled: mapValueOfType<bool>(json, r'disabled'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<GithubPagesDisabledOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubPagesDisabledOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubPagesDisabledOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubPagesDisabledOut> mapFromJson(dynamic json) {
    final map = <String, GithubPagesDisabledOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubPagesDisabledOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubPagesDisabledOut-objects as value to a dart map
  static Map<String, List<GithubPagesDisabledOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubPagesDisabledOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubPagesDisabledOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

