//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubImportIn {
  /// Returns a new [GithubImportIn] instance.
  GithubImportIn({
    this.all,
    this.repos = const [],
  });
  /// All imports every repository the installation grants, instead of naming them. Archived and disabled repositories are skipped either way — they cannot be fetched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? all;

  /// Repos names the repositories to import, either owner-qualified (\"hanzo-apps/ai\") or as a bare name (\"ai\"); a trailing \".git\" is stripped. A bare name that matches more than one granted repository is an error rather than a guess, because one Hanzo org may hold several GitHub installations and a name is only unique within an owner. Ignored when all is true.
  List<String> repos;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubImportIn &&
    other.all == all &&
    _deepEquality.equals(other.repos, repos);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (all == null ? 0 : all!.hashCode) +
    (repos.hashCode);

  @override
  String toString() => 'GithubImportIn[all=$all, repos=$repos]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.all != null) {
      json[r'all'] = this.all;
    } else {
      json[r'all'] = null;
    }
      json[r'repos'] = this.repos;
    return json;
  }

  /// Returns a new [GithubImportIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubImportIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubImportIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubImportIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubImportIn(
        all: mapValueOfType<bool>(json, r'all'),
        repos: json[r'repos'] is Iterable
            ? (json[r'repos'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GithubImportIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubImportIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubImportIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubImportIn> mapFromJson(dynamic json) {
    final map = <String, GithubImportIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubImportIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubImportIn-objects as value to a dart map
  static Map<String, List<GithubImportIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubImportIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubImportIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

