//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexIn {
  /// Returns a new [IndexIn] instance.
  IndexIn({
    this.files = const [],
    this.prune,
    this.repo,
  });

  /// Files is the full set of files to index. Required and non-empty; max 20000 files, 1 MiB per file and 1 GiB in total. Unchanged files are skipped by content hash, so re-sending the whole tree is cheap.
  List<FileInput> files;

  /// Prune deletes indexed files that are NOT in this request — which makes the call a full sync of the repo rather than an upsert. Only pass it when Files is the complete tree.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? prune;

  /// Repo is the repository label to index under. Required, max 200 bytes. It is a stored column value, not a filesystem path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexIn &&
    _deepEquality.equals(other.files, files) &&
    other.prune == prune &&
    other.repo == repo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files.hashCode) +
    (prune == null ? 0 : prune!.hashCode) +
    (repo == null ? 0 : repo!.hashCode);

  @override
  String toString() => 'IndexIn[files=$files, prune=$prune, repo=$repo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'files'] = this.files;
    if (this.prune != null) {
      json[r'prune'] = this.prune;
    } else {
      json[r'prune'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    return json;
  }

  /// Returns a new [IndexIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexIn(
        files: FileInput.listFromJson(json[r'files']),
        prune: mapValueOfType<bool>(json, r'prune'),
        repo: mapValueOfType<String>(json, r'repo'),
      );
    }
    return null;
  }

  static List<IndexIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexIn> mapFromJson(dynamic json) {
    final map = <String, IndexIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexIn-objects as value to a dart map
  static Map<String, List<IndexIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

