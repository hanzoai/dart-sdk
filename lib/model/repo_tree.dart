//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RepoTree {
  /// Returns a new [RepoTree] instance.
  RepoTree({
    this.files = const [],
    this.repo,
  });
  /// Files are the repo's indexed files in path order, each with its language and how many symbols it defines. Never null.
  List<TreeEntry> files;

  /// Repo echoes the repository that was walked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RepoTree &&
    _deepEquality.equals(other.files, files) &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'RepoTree[files=$files, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'files'] = this.files;
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [RepoTree] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RepoTree? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RepoTree[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RepoTree[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RepoTree(
        files: TreeEntry.listFromJson(json[r'files']),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<RepoTree> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RepoTree>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RepoTree.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RepoTree> mapFromJson(dynamic json) {
    final map = <String, RepoTree>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RepoTree.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RepoTree-objects as value to a dart map
  static Map<String, List<RepoTree>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RepoTree>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RepoTree.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

